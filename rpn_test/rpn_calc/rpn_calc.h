/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rpn_calc.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kmurray <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/01 19:29:07 by kmurray           #+#    #+#             */
/*   Updated: 2017/02/01 20:22:50 by kmurray          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef RPN_H
#define RPN_H

# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>

typedef	struct		s_list
{
	int				val;
	struct s_list	*next;
}					t_list;

void	ft_lstadd(t_list **begin_list, int val);
void	ft_lstdel(t_list **begin_list);
int		ft_isnum(char *str);
int		ft_isop(char c);
int		ft_operate(t_list **begin_list, char c);

#endif


