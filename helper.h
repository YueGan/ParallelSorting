#define SIZE 44

struct rec {
    int freq;
    char word[SIZE];
    
};

int get_file_size(char *filename);
int compare_freq(const void *rec1, const void *rec2);