pragma solidity >=0.4.17 <0.7.0;
contract Report{
    string public Name;
    uint256 public Roll_no;
    string public Batch;
    uint256 public Total;
    uint256 public English;
    uint256 public Maths;
    uint256 public Science;
    uint256 public Social_Science;
    uint256 public Computer_Science;
    string public Status;
    
    
    function Report(string  NewName,uint256  NewRoll_no,string  NewBatch,uint256 NewEnglish, uint256 NewMaths, uint256 NewScience,
    uint256 NewSocial_Science,uint256 NewComputer_Science) public {
        Name = NewName ;
        Roll_no = NewRoll_no;
        Batch = NewBatch;
        English = NewEnglish;
        Maths = NewMaths;
        Science = NewScience;
        Social_Science = NewSocial_Science;
        Computer_Science = NewComputer_Science;
        Total = NewEnglish + NewMaths + NewScience + NewSocial_Science;
            if (Total >= 200){
                Status= "Pass";
            } else {
                Status = "Fail";
            }
    }
        
    function getDetails()public view returns(string,uint256,string,uint256,uint256,uint256,uint256,uint256,string,uint256){
        return(Name,Roll_no,Batch,Total,English,Maths,Science,Social_Science,Status,Computer_Science);
    }
}