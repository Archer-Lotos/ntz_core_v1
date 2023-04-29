#include <stdint.h>
#include <graphene/utilities/git_revision.hpp>

#define GRAPHENE_GIT_REVISION_SHA "62376018c73b2d90647f799ec2c2f6c85bb3e0d1"
#define GRAPHENE_GIT_REVISION_UNIX_TIMESTAMP 1604668567
#define GRAPHENE_GIT_REVISION_DESCRIPTION "unknown"

namespace graphene { namespace utilities {

const char* const git_revision_sha = GRAPHENE_GIT_REVISION_SHA;
const uint32_t git_revision_unix_timestamp = GRAPHENE_GIT_REVISION_UNIX_TIMESTAMP;
const char* const git_revision_description = GRAPHENE_GIT_REVISION_DESCRIPTION;

} } // end namespace graphene::utilities
