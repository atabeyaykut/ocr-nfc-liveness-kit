.class public final Lx0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/h;
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx0/h;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lx0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/i<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lx0/h$a;

.field public d:I

.field public e:Lv0/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb1/o<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Lb1/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/o$a<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Lx0/i;Lx0/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv0/f;",
            ">;",
            "Lx0/i<",
            "*>;",
            "Lx0/h$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx0/e;->d:I

    iput-object p1, p0, Lx0/e;->a:Ljava/util/List;

    iput-object p2, p0, Lx0/e;->b:Lx0/i;

    iput-object p3, p0, Lx0/e;->c:Lx0/h$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lx0/e;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget v3, p0, Lx0/e;->g:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v3, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lx0/e;->h:Lb1/o$a;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_3
    :goto_2
    if-nez v0, :cond_6

    .line 26
    .line 27
    iget v3, p0, Lx0/e;->g:I

    .line 28
    .line 29
    iget-object v4, p0, Lx0/e;->f:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v3, v4, :cond_4

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_3

    .line 39
    :cond_4
    const/4 v3, 0x0

    .line 40
    :goto_3
    if-eqz v3, :cond_6

    .line 41
    .line 42
    iget-object v3, p0, Lx0/e;->f:Ljava/util/List;

    .line 43
    .line 44
    iget v4, p0, Lx0/e;->g:I

    .line 45
    .line 46
    add-int/lit8 v5, v4, 0x1

    .line 47
    .line 48
    iput v5, p0, Lx0/e;->g:I

    .line 49
    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lb1/o;

    .line 55
    .line 56
    iget-object v4, p0, Lx0/e;->j:Ljava/io/File;

    .line 57
    .line 58
    iget-object v5, p0, Lx0/e;->b:Lx0/i;

    .line 59
    .line 60
    iget v6, v5, Lx0/i;->e:I

    .line 61
    .line 62
    iget v7, v5, Lx0/i;->f:I

    .line 63
    .line 64
    iget-object v5, v5, Lx0/i;->i:Lv0/h;

    .line 65
    .line 66
    invoke-interface {v3, v4, v6, v7, v5}, Lb1/o;->b(Ljava/lang/Object;IILv0/h;)Lb1/o$a;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, p0, Lx0/e;->h:Lb1/o$a;

    .line 71
    .line 72
    iget-object v3, p0, Lx0/e;->h:Lb1/o$a;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v3, p0, Lx0/e;->b:Lx0/i;

    .line 77
    .line 78
    iget-object v4, p0, Lx0/e;->h:Lb1/o$a;

    .line 79
    .line 80
    iget-object v4, v4, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 81
    .line 82
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Lx0/i;->c(Ljava/lang/Class;)Lx0/u;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const/4 v3, 0x0

    .line 95
    :goto_4
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lx0/e;->h:Lb1/o$a;

    .line 98
    .line 99
    iget-object v0, v0, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    .line 100
    .line 101
    iget-object v3, p0, Lx0/e;->b:Lx0/i;

    .line 102
    .line 103
    iget-object v3, v3, Lx0/i;->o:Lcom/bumptech/glide/j;

    .line 104
    .line 105
    invoke-interface {v0, v3, p0}, Lcom/bumptech/glide/load/data/d;->e(Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/data/d$a;)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    return v0

    .line 111
    :cond_7
    :goto_5
    iget v0, p0, Lx0/e;->d:I

    .line 112
    .line 113
    add-int/2addr v0, v2

    .line 114
    iput v0, p0, Lx0/e;->d:I

    .line 115
    .line 116
    iget-object v2, p0, Lx0/e;->a:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-lt v0, v2, :cond_8

    .line 123
    .line 124
    return v1

    .line 125
    :cond_8
    iget-object v0, p0, Lx0/e;->a:Ljava/util/List;

    .line 126
    .line 127
    iget v2, p0, Lx0/e;->d:I

    .line 128
    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lv0/f;

    .line 134
    .line 135
    new-instance v2, Lx0/f;

    .line 136
    .line 137
    iget-object v3, p0, Lx0/e;->b:Lx0/i;

    .line 138
    .line 139
    iget-object v4, v3, Lx0/i;->n:Lv0/f;

    .line 140
    .line 141
    invoke-direct {v2, v0, v4}, Lx0/f;-><init>(Lv0/f;Lv0/f;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v3, Lx0/i;->h:Lx0/j$d;

    .line 145
    .line 146
    check-cast v3, Lx0/m$c;

    .line 147
    .line 148
    invoke-virtual {v3}, Lx0/m$c;->a()Lz0/a;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3, v2}, Lz0/a;->g(Lv0/f;)Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iput-object v2, p0, Lx0/e;->j:Ljava/io/File;

    .line 157
    .line 158
    if-eqz v2, :cond_0

    .line 159
    .line 160
    iput-object v0, p0, Lx0/e;->e:Lv0/f;

    .line 161
    .line 162
    iget-object v0, p0, Lx0/e;->b:Lx0/i;

    .line 163
    .line 164
    iget-object v0, v0, Lx0/i;->c:Lcom/bumptech/glide/h;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/k;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/k;->g(Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lx0/e;->f:Ljava/util/List;

    .line 175
    .line 176
    iput v1, p0, Lx0/e;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :catchall_0
    move-exception v0

    .line 181
    throw v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lx0/e;->c:Lx0/h$a;

    iget-object v1, p0, Lx0/e;->e:Lv0/f;

    iget-object v2, p0, Lx0/e;->h:Lb1/o$a;

    iget-object v2, v2, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    sget-object v3, Lv0/a;->c:Lv0/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lx0/h$a;->q(Lv0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lv0/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lx0/e;->h:Lb1/o$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lx0/e;->c:Lx0/h$a;

    iget-object v1, p0, Lx0/e;->e:Lv0/f;

    iget-object v2, p0, Lx0/e;->h:Lb1/o$a;

    iget-object v3, v2, Lb1/o$a;->c:Lcom/bumptech/glide/load/data/d;

    sget-object v4, Lv0/a;->c:Lv0/a;

    iget-object v5, p0, Lx0/e;->e:Lv0/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lx0/h$a;->n(Lv0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lv0/a;Lv0/f;)V

    return-void
.end method
