
resource "aws_iam_group" "developer_group" {
  name = "developer-group"
}

data "aws_iam_user" "existing_user" {
  user_name = "emma_ninja"
}

resource "aws_iam_policy" "viewnodespolicy" {
    name = "eks_view_nodes_policy"
    description = "This policy allows a group to access a kubernetes cluster"
    policy = jsonencode(
        {
    "Version" = "2012-10-17",
    "Statement" = [
        {
            "Effect" = "Allow",
            "Action" = [
                "eks:ListClusters",
                "eks:DescribeCluster",
                "eks:List*",
                "eks:Describe*",
                "eks:AccessKubernetesApi",
                "ssm:GetParameter",
                
            ],
            "Resource" = "*"
        }
    ]
}
    )
}

resource "aws_iam_group_membership" "name" {
    name = "developer_group_membership"
    group = aws_iam_group.developer_group.name
    users = [ data.aws_iam_user.existing_user.user_name ]
}

resource "aws_iam_group_policy_attachment" "policy_attach" {
  group       = aws_iam_group.developer_group.name
  policy_arn = aws_iam_policy.viewnodespolicy.arn
}