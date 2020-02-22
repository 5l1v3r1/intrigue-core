module Intrigue
  module Issue
  class SuspiciousWebResourceRequested < BaseIssue
  
    def self.generate(instance_details={})
      {
        name: "suspicious_web_resource_requested",
        pretty_name: "Deprecated SSL/TLS Protocol Detected",
        severity: 5,
        category: "application",
        description: "When a browser requested the resource, a suspicious request was made.",
        remediation: "Investigate the request.",
        affected_software: [ ],
        references: [ # types: description, remediation, detection_rule, exploit, threat_intel
          { type: "description", uri: "https://tools.ietf.org/id/draft-moriarty-tls-oldversions-diediedie-00.html" }
        ]
      }.merge!(instance_details)
    end
  
  end
  end
  end
  