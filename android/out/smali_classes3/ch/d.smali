.class public final synthetic Lch/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;I)V
    .locals 0

    iput p2, p0, Lch/d;->a:I

    iput-object p1, p0, Lch/d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lch/d;->a:I

    .line 4
    .line 5
    const v2, 0x7f080086

    .line 6
    .line 7
    .line 8
    const v3, 0x7f080087

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lch/d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;

    .line 12
    .line 13
    const-string v5, "this$0"

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :pswitch_0
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 20
    .line 21
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lch/a;

    .line 50
    .line 51
    iget v7, v6, Lch/a;->a:I

    .line 52
    .line 53
    const v8, 0x7f0a01c6

    .line 54
    .line 55
    .line 56
    if-ne v7, v8, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 63
    .line 64
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v6, p1}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iput-object v6, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->e:Lch/a;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    .line 80
    iget v8, v6, Lch/a;->a:I

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v6, v0}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v5}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 102
    .line 103
    return-void

    .line 104
    :goto_2
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->j:[Lda/m;

    .line 105
    .line 106
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 110
    .line 111
    new-instance v5, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_3

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Lch/a;

    .line 135
    .line 136
    iget v7, v6, Lch/a;->a:I

    .line 137
    .line 138
    const v8, 0x7f0a01e3

    .line 139
    .line 140
    .line 141
    if-ne v7, v8, :cond_2

    .line 142
    .line 143
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->r:Landroidx/appcompat/widget/AppCompatImageView;

    .line 148
    .line 149
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v6, p1}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iput-object v6, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->e:Lch/a;

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_2
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    iget-object v7, v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDashPointBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    iget v8, v6, Lch/a;->a:I

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    .line 173
    .line 174
    invoke-static {v6, v0}, Lch/a;->a(Lch/a;Z)Lch/a;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    :goto_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-static {v5}, Lm9/t;->w1(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/dashpoint/MobileAccidentDashPointFragment;->h:Ljava/util/ArrayList;

    .line 187
    .line 188
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
