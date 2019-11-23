
// fopen(FilePath, "r")
open(FilePath, O_RDONLY);
// fopen(FilePath, "a")
open(FilePath, O_APPEND | O_CREAT | O_WRONLY);
// fopen(FilePath, "w")
open(FilePath, O_WRONLY | O_CREAT | O_TRUNC);
// fopen(FilePath, "r+")
open
// fopen(FilePath, "w+")