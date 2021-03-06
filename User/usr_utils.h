#ifndef _USR_UTILS_H
#define _USR_UTILS_H

#include <stdlib.h>
#include <string.h>
#include <fcntl.h>


#include <sys/types.h>
#include <sys/stat.h>

#include "../Common/types.h"
#include "../Common/sope.h"
#include "../Common/error.h"

int parse_input (tlv_request_t *request, char *argv[]);

ret_code_t writeToFifo (tlv_request_t request);

tlv_reply_t readFifo (int tmpFifo);

void print_reply (tlv_reply_t reply);

#endif