CREATE OR ALTER PROCEDURE StudentGpaAdjustment
AS
BEGIN
	DECLARE @Firstname varchar(30);
	DECLARE @Lastname varchar(30);
	DECLARE @GpaDelta decimal(5,2);
	SELECT Firstname, Lastname, GpaDelta
			From Adjustments		
				Where Completed = 0
	Open cur;
		FETCH Next From cur into @Firstname, @Lastname, @GpaDelta;
		WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE Student SET
				GPA = GPA + GpaDelta
				Where Firstname = @Firstname AND Lastname = @Lastname
				SELECT Firstname, Lastname, @GpaDelta
				FETCH Next From cur into @Firstname, @Lastname, @GpaDelta;

		END
	Close cur;
	Deallocate cur; 
END

UPDATE Adjustments Set
Completed = 1
Where Completed = 0;

