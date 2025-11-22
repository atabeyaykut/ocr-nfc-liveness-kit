.class public final Lwa/j$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/j;-><init>(Lcb/a;Lp4/g7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Map<",
        "Llb/f;",
        "+",
        "Lqb/g<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lwa/j;


# direct methods
.method public constructor <init>(Lwa/j;)V
    .locals 0

    iput-object p1, p0, Lwa/j$a;->a:Lwa/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lwa/j$a;->a:Lwa/j;

    .line 2
    .line 3
    iget-object v0, v0, Lwa/b;->d:Lcb/b;

    .line 4
    .line 5
    instance-of v1, v0, Lcb/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lwa/e;->a:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Lcb/e;

    .line 13
    .line 14
    invoke-interface {v0}, Lcb/e;->e()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Lcb/m;

    .line 20
    .line 21
    if-eqz v1, :cond_7

    .line 22
    .line 23
    sget-object v1, Lwa/e;->a:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v0}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    const-string v1, "arguments"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    instance-of v4, v3, Lcb/m;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcb/m;

    .line 83
    .line 84
    invoke-interface {v3}, Lcb/m;->d()Llb/f;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v3}, Llb/f;->o()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move-object v3, v2

    .line 96
    :goto_3
    sget-object v4, Lwa/e;->a:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/util/EnumSet;

    .line 103
    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    sget-object v3, Lm9/x;->a:Lm9/x;

    .line 108
    .line 109
    :goto_4
    invoke-static {v3, v0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_6

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lna/n;

    .line 137
    .line 138
    new-instance v4, Lqb/k;

    .line 139
    .line 140
    sget-object v5, Lja/o$a;->u:Llb/c;

    .line 141
    .line 142
    invoke-static {v5}, Llb/b;->l(Llb/c;)Llb/b;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-direct {v4, v5, v3}, Lqb/k;-><init>(Llb/b;Llb/f;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_6
    new-instance v0, Lqb/b;

    .line 162
    .line 163
    sget-object v3, Lwa/d;->a:Lwa/d;

    .line 164
    .line 165
    invoke-direct {v0, v1, v3}, Lqb/b;-><init>(Ljava/util/List;Lx9/l;)V

    .line 166
    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_7
    move-object v0, v2

    .line 170
    :goto_6
    if-eqz v0, :cond_8

    .line 171
    .line 172
    sget-object v1, Lwa/c;->b:Llb/f;

    .line 173
    .line 174
    new-instance v2, Ll9/g;

    .line 175
    .line 176
    invoke-direct {v2, v1, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lb8/f;->W(Ll9/g;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_8
    if-nez v2, :cond_9

    .line 184
    .line 185
    sget-object v2, Lm9/w;->a:Lm9/w;

    .line 186
    .line 187
    :cond_9
    return-object v2
.end method
