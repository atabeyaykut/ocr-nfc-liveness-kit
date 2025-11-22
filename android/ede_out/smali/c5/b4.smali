.class public final Lc5/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/u7;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lc5/b4;->a:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1}, Lc5/b4;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc5/z4;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc5/b4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb0/a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-direct {v0}, Lb0/a;-><init>()V

    iput-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvc/k;

    sget-object v1, Luc/d;->h:Luc/d;

    invoke-direct {v0, v1, p1}, Lvc/k;-><init>(Luc/d;Ljava/util/concurrent/TimeUnit;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lc5/b4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast v1, Lc5/o7;

    .line 10
    .line 11
    iget-object p1, v1, Lc5/o7;->m:Lc5/i4;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 16
    .line 17
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "AppId not known when logging event"

    .line 21
    .line 22
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 23
    .line 24
    const-string v0, "_err"

    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    check-cast v1, Lc5/o7;

    .line 31
    .line 32
    invoke-virtual {v1}, Lc5/o7;->l()Lc5/h4;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lc5/m7;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1, p2}, Lc5/m7;-><init>(Lc5/b4;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lc5/h4;->p(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lc5/b4;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Iterator;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to spread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final f([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc5/b4;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(ILjava/lang/String;Ljava/util/List;ZZ)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lc5/b4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-eq p1, v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Lc5/c4;

    .line 17
    .line 18
    iget-object p1, v2, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    check-cast p1, Lc5/i4;

    .line 21
    .line 22
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 23
    .line 24
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lc5/e3;->m:Lc5/c3;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v2, Lc5/c4;

    .line 31
    .line 32
    iget-object p1, v2, Lc5/x4;->a:Lc5/z4;

    .line 33
    .line 34
    check-cast p1, Lc5/i4;

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 39
    .line 40
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lc5/e3;->k:Lc5/c3;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-nez p5, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 49
    .line 50
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lc5/e3;->l:Lc5/c3;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 57
    .line 58
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lc5/e3;->j:Lc5/c3;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    check-cast v2, Lc5/c4;

    .line 65
    .line 66
    iget-object p1, v2, Lc5/x4;->a:Lc5/z4;

    .line 67
    .line 68
    check-cast p1, Lc5/i4;

    .line 69
    .line 70
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 71
    .line 72
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lc5/e3;->p:Lc5/c3;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    check-cast v2, Lc5/c4;

    .line 79
    .line 80
    iget-object p1, v2, Lc5/x4;->a:Lc5/z4;

    .line 81
    .line 82
    check-cast p1, Lc5/i4;

    .line 83
    .line 84
    if-eqz p4, :cond_5

    .line 85
    .line 86
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 87
    .line 88
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lc5/e3;->g:Lc5/c3;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    if-nez p5, :cond_6

    .line 95
    .line 96
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 97
    .line 98
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Lc5/e3;->h:Lc5/c3;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 105
    .line 106
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p1, Lc5/e3;->f:Lc5/c3;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    check-cast v2, Lc5/c4;

    .line 113
    .line 114
    iget-object p1, v2, Lc5/x4;->a:Lc5/z4;

    .line 115
    .line 116
    check-cast p1, Lc5/i4;

    .line 117
    .line 118
    iget-object p1, p1, Lc5/i4;->j:Lc5/e3;

    .line 119
    .line 120
    invoke-static {p1}, Lc5/i4;->e(Lc5/y4;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p1, Lc5/e3;->n:Lc5/c3;

    .line 124
    .line 125
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    const/4 p5, 0x0

    .line 130
    if-eq p4, v1, :cond_a

    .line 131
    .line 132
    const/4 v2, 0x2

    .line 133
    if-eq p4, v2, :cond_9

    .line 134
    .line 135
    if-eq p4, v0, :cond_8

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p5

    .line 149
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p1, p2, p4, p5, p3}, Lc5/c3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p1, p4, p2, p3}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-virtual {p1, p3, p2}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method
