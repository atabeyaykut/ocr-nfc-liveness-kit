.class public final Lk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/h$a;


# instance fields
.field public final a:Lp/g;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lp/g;

.field public final e:Lq/e;

.field public final f:Le/b;

.field public final g:Z


# direct methods
.method public constructor <init>(Lp/g;Ljava/util/List;ILp/g;Lq/e;Le/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/g;",
            "Ljava/util/List<",
            "+",
            "Lk/h;",
            ">;I",
            "Lp/g;",
            "Lq/e;",
            "Le/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/i;->a:Lp/g;

    iput-object p2, p0, Lk/i;->b:Ljava/util/List;

    iput p3, p0, Lk/i;->c:I

    iput-object p4, p0, Lk/i;->d:Lp/g;

    iput-object p5, p0, Lk/i;->e:Lq/e;

    iput-object p6, p0, Lk/i;->f:Le/b;

    iput-boolean p7, p0, Lk/i;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lp/g;
    .locals 1

    iget-object v0, p0, Lk/i;->d:Lp/g;

    return-object v0
.end method

.method public final b(Lp/g;Lk/h;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lp/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lk/i;->a:Lp/g;

    .line 4
    .line 5
    iget-object v2, v1, Lp/g;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const-string v2, "Interceptor \'"

    .line 15
    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    sget-object v0, Lp/i;->a:Lp/i;

    .line 19
    .line 20
    iget-object v5, p1, Lp/g;->b:Ljava/lang/Object;

    .line 21
    .line 22
    if-eq v5, v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_1
    if-eqz v0, :cond_8

    .line 28
    .line 29
    iget-object v0, v1, Lp/g;->c:Lr/a;

    .line 30
    .line 31
    iget-object v5, p1, Lp/g;->c:Lr/a;

    .line 32
    .line 33
    if-ne v5, v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_2
    if-eqz v0, :cond_7

    .line 39
    .line 40
    iget-object v0, v1, Lp/g;->A:Landroidx/lifecycle/Lifecycle;

    .line 41
    .line 42
    iget-object v5, p1, Lp/g;->A:Landroidx/lifecycle/Lifecycle;

    .line 43
    .line 44
    if-ne v5, v0, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    :goto_3
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v0, v1, Lp/g;->B:Lq/f;

    .line 52
    .line 53
    iget-object p1, p1, Lp/g;->B:Lq/f;

    .line 54
    .line 55
    if-ne p1, v0, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    const/4 v3, 0x0

    .line 59
    :goto_4
    if-eqz v3, :cond_5

    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, "\' cannot modify the request\'s lifecycle."

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p2, "\' cannot modify the request\'s target."

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2

    .line 143
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p2, "\' cannot set the request\'s data to null."

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p2

    .line 170
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, "\' cannot modify the request\'s context."

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p2
.end method

.method public final c(Lp/g;Lp9/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/g;",
            "Lp9/d<",
            "-",
            "Lp/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lk/i$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lk/i$a;

    .line 7
    .line 8
    iget v1, v0, Lk/i$a;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lk/i$a;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lk/i$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lk/i$a;-><init>(Lk/i;Lp9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lk/i$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lq9/a;->a:Lq9/a;

    .line 28
    .line 29
    iget v2, v0, Lk/i$a;->e:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lk/i$a;->b:Lk/h;

    .line 37
    .line 38
    iget-object v0, v0, Lk/i$a;->a:Lk/i;

    .line 39
    .line 40
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lk/i;->b:Ljava/util/List;

    .line 56
    .line 57
    iget v2, p0, Lk/i;->c:I

    .line 58
    .line 59
    if-lez v2, :cond_3

    .line 60
    .line 61
    add-int/lit8 v4, v2, -0x1

    .line 62
    .line 63
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lk/h;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v4}, Lk/i;->b(Lp/g;Lk/h;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lk/h;

    .line 77
    .line 78
    add-int/lit8 v7, v2, 0x1

    .line 79
    .line 80
    iget-object v9, p0, Lk/i;->e:Lq/e;

    .line 81
    .line 82
    new-instance v2, Lk/i;

    .line 83
    .line 84
    iget-object v5, p0, Lk/i;->a:Lp/g;

    .line 85
    .line 86
    iget-object v6, p0, Lk/i;->b:Ljava/util/List;

    .line 87
    .line 88
    iget-object v10, p0, Lk/i;->f:Le/b;

    .line 89
    .line 90
    iget-boolean v11, p0, Lk/i;->g:Z

    .line 91
    .line 92
    move-object v4, v2

    .line 93
    move-object v8, p1

    .line 94
    invoke-direct/range {v4 .. v11}, Lk/i;-><init>(Lp/g;Ljava/util/List;ILp/g;Lq/e;Le/b;Z)V

    .line 95
    .line 96
    .line 97
    iput-object p0, v0, Lk/i$a;->a:Lk/i;

    .line 98
    .line 99
    iput-object p2, v0, Lk/i$a;->b:Lk/h;

    .line 100
    .line 101
    iput v3, v0, Lk/i$a;->e:I

    .line 102
    .line 103
    invoke-interface {p2, v2, v0}, Lk/h;->a(Lk/i;Lp9/d;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-ne p1, v1, :cond_4

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_4
    move-object v0, p0

    .line 111
    move-object v12, p2

    .line 112
    move-object p2, p1

    .line 113
    move-object p1, v12

    .line 114
    :goto_1
    check-cast p2, Lp/h;

    .line 115
    .line 116
    invoke-virtual {p2}, Lp/h;->b()Lp/g;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1, p1}, Lk/i;->b(Lp/g;Lk/h;)V

    .line 121
    .line 122
    .line 123
    return-object p2
.end method
