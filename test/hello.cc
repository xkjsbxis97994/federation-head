// Copyright 2018 Google Inc.  All rights reserved
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <string>
#include "zlib.h"
#include "absl/strings/str_cat.h"
#include "absl/strings/string_view.h"

namespace hello {

std::string Greet(absl::string_view person) {
  return absl::StrCat("Hello ", person);
}

std::string zCompress(std::string str_in ) {

    // placeholder for the compressed (deflated) version of str_in
    char buf[50];
    // compress str_in into b

    // zlib struct
    z_stream defstream;
    defstream.zalloc = Z_NULL;
    defstream.zfree = Z_NULL;
    defstream.opaque = Z_NULL;
    // setup "a" as the input and "b" as the compressed output
    defstream.avail_in = (uInt)strlen(str_in.c_str())+1; // size of input, string + terminator
    defstream.next_in = (Bytef *)str_in.c_str(); // input char array
    defstream.avail_out = (uInt)sizeof(buf); // size of output
    defstream.next_out = (Bytef *)buf; // output char array

    // the actual compression work.
    deflateInit(&defstream, Z_BEST_COMPRESSION);
    deflate(&defstream, Z_FINISH);
    deflateEnd(&defstream);

    return buf;
}



}  // namespace hello
