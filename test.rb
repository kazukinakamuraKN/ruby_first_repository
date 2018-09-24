def self.method_name
  return *(caller[0].scan(/`(.+)'/)[0])
end