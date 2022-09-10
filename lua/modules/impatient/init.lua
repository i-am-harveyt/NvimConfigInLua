local packer_status, pk = pcall(require, "packer")

if not packer_status then
  return
end

-- impatient, to make loading faster
pk.use({ 'lewis6991/impatient.nvim' })

require('impatient')
