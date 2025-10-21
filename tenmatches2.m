### bootstrap-4.1.3 button.js
          if (triggerChangeEvent) {
            if (input.hasAttribute('disabled') ||
              rootElement.hasAttribute('disabled') ||
              input.classList.contains('disabled') ||
              rootElement.classList.contains('disabled')) {
              return
            }
            input.checked = !this._element.classList.contains(ClassName.ACTIVE)
            $(input).trigger('change')
          }

          input.focus()
          addAriaPressed = false
### linux-2.6.10 kernel/wait.c
void fastcall
prepare_to_wait(wait_queue_head_t *q, wait_queue_t *wait, int state)
{
    unsigned long flags;

    wait->flags &= ~WQ_FLAG_EXCLUSIVE;
    spin_lock_irqsave(&q->lock, flags);
    if (list_empty(&wait->task_list))
        __add_wait_queue(q, wait);
    /*
     * don't alter the task state if this is just going to
     * queue an async wait queue callback
     */
    if (is_sync_wait(wait))
### jquery-3.3.1 jquery-3.3.1.js
                    matchExpr = {
        "ID": new RegExp( "^#(" + identifier + ")" ),
        "CLASS": new RegExp( "^\\.(" + identifier + ")" ),
        "TAG": new RegExp( "^(" + identifier + "|[*])" ),
        "ATTR": new RegExp( "^" + attributes ),
        "PSEUDO": new RegExp( "^" + pseudos ),
        "CHILD": new RegExp( "^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + whitespace +
            "*(even|odd|(([+-]|)(\\d*)n|)" + whitespace + "*(?:([+-]|)" + whitespace +
            "*(\\d+)|))" + whitespace + "*\\)|)", "i" ),
        "bool": new RegExp( "^(?:" + booleans + ")$", "i" ),
### node 10.13.0 node_buffer.cc
void Copy(const FunctionCallbackInfo<Value> &args) {          
  Environment* env = Environment::GetCurrent(args);           
                                                              
  THROW_AND_RETURN_UNLESS_BUFFER(env, args[0]);               
  THROW_AND_RETURN_UNLESS_BUFFER(env, args[1]);               
  Local<Object> buffer_obj = args[0].As<Object>();            
  Local<Object> target_obj = args[1].As<Object>();            
  SPREAD_BUFFER_ARG(buffer_obj, ts_obj);                      
  SPREAD_BUFFER_ARG(target_obj, target);                      
                                                              
  size_t target_start;                                        
  size_t source_start;                                        
### ofp-2.0.1 ofp_in6.c
in6_purgeaddr(struct ifaddr *ifa)
{
        struct ifnet *ifp = ifa->ifa_ifp;
        struct in6_ifaddr *ia = (struct in6_ifaddr *) ifa;
        int plen, error;
        struct ifaddr *ifa0;

        /*
         * find another IPv6 address as the gateway for the
         * link-local and node-local all-nodes multicast
         * address routes
         */
        IF_ADDR_RLOCK(ifp);
        OFP_TAILQ_FOREACH(ifa0, &ifp->if_addrhead, ifa_link) {
### openssl-1.0.2q d1_pkt.c
/* mod 128 saturating subtract of two 64-bit values in big-endian order */
static int satsub64be(const unsigned char *v1, const unsigned char *v2)
{
    int ret, i;

    if (sizeof(long) == 8)
        do {
            const union {
                long one;
                char little;
            } is_endian = {
                1
            };
            long l;

            if (is_endian.little)
### chromium 78.0.3904.106 /base/allocator/allocator_shim.cc
ALWAYS_INLINE void* ShimAlignedRealloc(void* address,
                                       size_t size,
                                       size_t alignment,
                                       void* context) {
  // _aligned_realloc(size == 0) means _aligned_free() and might return a
  // nullptr. We should not call the std::new_handler in that case, though.
  const base::allocator::AllocatorDispatch* const chain_head = GetChainHead();
  void* ptr = nullptr;
  do {
    ptr = chain_head->aligned_realloc_function(chain_head, address, size,
                                               alignment, context);
### tensorflow-1.12.0 c_api.cc
  if (dtype != TF_STRING && dtype != TF_RESOURCE &&
      tensorflow::DataTypeCanUseMemcpy(static_cast<DataType>(dtype)) &&
      reinterpret_cast<intptr_t>(data) % std::max(1, EIGEN_MAX_ALIGN_BYTES) !=
          0) {
    // TF_STRING and TF_RESOURCE tensors have a different representation in
    // TF_Tensor than they do in tensorflow::Tensor. So a copy here is a waste
    // (any alignment requirements will be taken care of by TF_TensorToTensor
    // and TF_TensorFromTensor).
    //
    // Other types have the same representation, so copy only if it is safe to
    // do so.
    buf->data_ = allocate_tensor("TF_NewTensor", len);
### angular-1.2.32 angular.js
function minErr(module) {
  return function () {
    var code = arguments[0],
      prefix = '[' + (module ? module + ':' : '') + code + '] ',
      template = arguments[1],
      templateArgs = arguments,
      stringify = function (obj) {
        if (typeof obj === 'function') {
          return obj.toString().replace(/ \{[\s\S]*$/, '');
### tinydir-3aae922 tinydir.h
typedef struct tinydir_dir
{
        _tinydir_char_t path[_TINYDIR_PATH_MAX];
        int has_next;
        size_t n_files;

        tinydir_file *_files;
#ifdef _MSC_VER
        HANDLE _h;
        WIN32_FIND_DATA _f;
#else
        _TINYDIR_DIR *_d;
### END