/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_atoi.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: bpeeters <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/10/28 16:47:48 by bpeeters       #+#    #+#                */
/*   Updated: 2020/01/14 16:14:21 by bpeeters      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

int		ft_atoi(const char *str)
{
	int			i;
	long long	ans;
	int			ncheck;

	i = 0;
	ans = 0;
	ncheck = 1;
	while ((str[i] >= 9 && str[i] <= 13) || str[i] == ' ')
		++i;
	if (str[i] == '-')
		ncheck = -1;
	if (str[i] == '+' || str[i] == '-')
		++i;
	while (str[i] >= '0' && str[i] <= '9')
	{
		if (ans * 10 + str[i] - '0' < ans)
		{
			ans = (-1 * ncheck - 1) / 2;
			return (ans * ncheck);
		}
		ans *= 10;
		ans += str[i] - '0';
		++i;
	}
	return (ans * ncheck);
}
