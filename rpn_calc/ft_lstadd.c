/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kmurray <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/01 19:39:48 by kmurray           #+#    #+#             */
/*   Updated: 2017/02/01 19:42:41 by kmurray          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "rpn_calc.h"

void	ft_lstadd(t_list **begin_list, int val)
{
	t_list	*new;

	if ((new = (t_list *)malloc(sizeof(t_list))))
	{
		new->val = val;
		new->next = *begin_list;
		*begin_list = new;
	}
}
