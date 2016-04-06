//local file
static int global_static_var_not_init;
static int global_static_var_init=8;
static int global_static_var_init_0=0;

//global file
int global_var_not_init;
int global_var_init=88;
int global_var_init_0=0;

const int global_const_var=99;

int main(int argc,char** argv){
	static int static_var_not_init;
	static int static_var_init=6;
	static int static_var_init_0=0;

	int var_not_init;
	int var_init=66;
	int var_init_0=0;

	const int const_var=999;
	return 0;
}
