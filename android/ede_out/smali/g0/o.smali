.class public final Lg0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Lg0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lg0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lg0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Lq0/d;",
            "Lq0/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lg0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lg0/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Lg0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lg0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg0/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj0/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg0/o;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    iget-object v0, p1, Lj0/l;->a:Lj0/e;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lj0/e;->c()Lg0/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    iput-object v0, p0, Lg0/o;->f:Lg0/a;

    .line 23
    .line 24
    iget-object v0, p1, Lj0/l;->b:Lj0/m;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-interface {v0}, Lj0/m;->c()Lg0/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    iput-object v0, p0, Lg0/o;->g:Lg0/a;

    .line 35
    .line 36
    iget-object v0, p1, Lj0/l;->c:Lj0/g;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v0}, Lj0/g;->c()Lg0/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_2
    iput-object v0, p0, Lg0/o;->h:Lg0/a;

    .line 47
    .line 48
    iget-object v0, p1, Lj0/l;->d:Lj0/b;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    move-object v0, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_3
    iput-object v0, p0, Lg0/o;->i:Lg0/a;

    .line 59
    .line 60
    iget-object v0, p1, Lj0/l;->f:Lj0/b;

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    move-object v0, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lg0/c;

    .line 71
    .line 72
    :goto_4
    iput-object v0, p0, Lg0/o;->k:Lg0/c;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lg0/o;->b:Landroid/graphics/Matrix;

    .line 82
    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lg0/o;->c:Landroid/graphics/Matrix;

    .line 89
    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lg0/o;->d:Landroid/graphics/Matrix;

    .line 96
    .line 97
    const/16 v0, 0x9

    .line 98
    .line 99
    new-array v0, v0, [F

    .line 100
    .line 101
    iput-object v0, p0, Lg0/o;->e:[F

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    iput-object v1, p0, Lg0/o;->b:Landroid/graphics/Matrix;

    .line 105
    .line 106
    iput-object v1, p0, Lg0/o;->c:Landroid/graphics/Matrix;

    .line 107
    .line 108
    iput-object v1, p0, Lg0/o;->d:Landroid/graphics/Matrix;

    .line 109
    .line 110
    iput-object v1, p0, Lg0/o;->e:[F

    .line 111
    .line 112
    :goto_5
    iget-object v0, p1, Lj0/l;->g:Lj0/b;

    .line 113
    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    move-object v0, v1

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lg0/c;

    .line 123
    .line 124
    :goto_6
    iput-object v0, p0, Lg0/o;->l:Lg0/c;

    .line 125
    .line 126
    iget-object v0, p1, Lj0/l;->e:Lj0/d;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {v0}, Lj0/d;->c()Lg0/a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lg0/o;->j:Lg0/a;

    .line 135
    .line 136
    :cond_7
    iget-object v0, p1, Lj0/l;->h:Lj0/b;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v0}, Lj0/b;->c()Lg0/a;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lg0/o;->m:Lg0/a;

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_8
    iput-object v1, p0, Lg0/o;->m:Lg0/a;

    .line 148
    .line 149
    :goto_7
    iget-object p1, p1, Lj0/l;->i:Lj0/b;

    .line 150
    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p1}, Lj0/b;->c()Lg0/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lg0/o;->n:Lg0/a;

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_9
    iput-object v1, p0, Lg0/o;->n:Lg0/a;

    .line 161
    .line 162
    :goto_8
    return-void
.end method


# virtual methods
.method public final a(Ll0/b;)V
    .locals 1

    iget-object v0, p0, Lg0/o;->j:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->m:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->n:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->f:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->g:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->h:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->i:Lg0/a;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->k:Lg0/c;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    iget-object v0, p0, Lg0/o;->l:Lg0/c;

    invoke-virtual {p1, v0}, Ll0/b;->e(Lg0/a;)V

    return-void
.end method

.method public final b(Lg0/a$a;)V
    .locals 1

    iget-object v0, p0, Lg0/o;->j:Lg0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_0
    iget-object v0, p0, Lg0/o;->m:Lg0/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_1
    iget-object v0, p0, Lg0/o;->n:Lg0/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_2
    iget-object v0, p0, Lg0/o;->f:Lg0/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_3
    iget-object v0, p0, Lg0/o;->g:Lg0/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_4
    iget-object v0, p0, Lg0/o;->h:Lg0/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_5
    iget-object v0, p0, Lg0/o;->i:Lg0/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_6
    iget-object v0, p0, Lg0/o;->k:Lg0/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_7
    iget-object v0, p0, Lg0/o;->l:Lg0/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lg0/a;->a(Lg0/a$a;)V

    :cond_8
    return-void
.end method

.method public final c(Lq0/c;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ld0/q;->e:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lg0/o;->f:Lg0/a;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lg0/p;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lg0/o;->f:Lg0/a;

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Lg0/a;->k(Lq0/c;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    sget-object v0, Ld0/q;->f:Landroid/graphics/PointF;

    .line 29
    .line 30
    if-ne p2, v0, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lg0/o;->g:Lg0/a;

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    new-instance p2, Lg0/p;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/PointF;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lg0/o;->g:Lg0/a;

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_2
    sget-object v0, Ld0/q;->g:Ljava/lang/Float;

    .line 51
    .line 52
    if-ne p2, v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lg0/o;->g:Lg0/a;

    .line 55
    .line 56
    instance-of v1, v0, Lg0/m;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    check-cast v0, Lg0/m;

    .line 61
    .line 62
    iget-object p2, v0, Lg0/m;->m:Lq0/c;

    .line 63
    .line 64
    iput-object p1, v0, Lg0/m;->m:Lq0/c;

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_3
    sget-object v0, Ld0/q;->h:Ljava/lang/Float;

    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lg0/o;->g:Lg0/a;

    .line 73
    .line 74
    instance-of v1, v0, Lg0/m;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    check-cast v0, Lg0/m;

    .line 79
    .line 80
    iget-object p2, v0, Lg0/m;->n:Lq0/c;

    .line 81
    .line 82
    iput-object p1, v0, Lg0/m;->n:Lq0/c;

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    sget-object v0, Ld0/q;->m:Lq0/d;

    .line 87
    .line 88
    if-ne p2, v0, :cond_5

    .line 89
    .line 90
    iget-object p2, p0, Lg0/o;->h:Lg0/a;

    .line 91
    .line 92
    if-nez p2, :cond_0

    .line 93
    .line 94
    new-instance p2, Lg0/p;

    .line 95
    .line 96
    new-instance v0, Lq0/d;

    .line 97
    .line 98
    invoke-direct {v0}, Lq0/d;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Lg0/o;->h:Lg0/a;

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_5
    sget-object v0, Ld0/q;->n:Ljava/lang/Float;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    if-ne p2, v0, :cond_6

    .line 112
    .line 113
    iget-object p2, p0, Lg0/o;->i:Lg0/a;

    .line 114
    .line 115
    if-nez p2, :cond_0

    .line 116
    .line 117
    new-instance p2, Lg0/p;

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iput-object p2, p0, Lg0/o;->i:Lg0/a;

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_6
    sget-object v0, Ld0/q;->c:Ljava/lang/Integer;

    .line 131
    .line 132
    const/16 v2, 0x64

    .line 133
    .line 134
    if-ne p2, v0, :cond_7

    .line 135
    .line 136
    iget-object p2, p0, Lg0/o;->j:Lg0/a;

    .line 137
    .line 138
    if-nez p2, :cond_0

    .line 139
    .line 140
    new-instance p2, Lg0/p;

    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iput-object p2, p0, Lg0/o;->j:Lg0/a;

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_7
    sget-object v0, Ld0/q;->A:Ljava/lang/Float;

    .line 154
    .line 155
    if-ne p2, v0, :cond_9

    .line 156
    .line 157
    iget-object v0, p0, Lg0/o;->m:Lg0/a;

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    if-nez v0, :cond_8

    .line 162
    .line 163
    new-instance p2, Lg0/p;

    .line 164
    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iput-object p2, p0, Lg0/o;->m:Lg0/a;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    invoke-virtual {v0, p1}, Lg0/a;->k(Lq0/c;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_9
    sget-object v0, Ld0/q;->B:Ljava/lang/Float;

    .line 180
    .line 181
    if-ne p2, v0, :cond_a

    .line 182
    .line 183
    iget-object v0, p0, Lg0/o;->n:Lg0/a;

    .line 184
    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    if-nez v0, :cond_8

    .line 188
    .line 189
    new-instance p2, Lg0/p;

    .line 190
    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {p2, p1, v0}, Lg0/p;-><init>(Lq0/c;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iput-object p2, p0, Lg0/o;->n:Lg0/a;

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_a
    sget-object v0, Ld0/q;->o:Ljava/lang/Float;

    .line 202
    .line 203
    if-ne p2, v0, :cond_c

    .line 204
    .line 205
    iget-object v0, p0, Lg0/o;->k:Lg0/c;

    .line 206
    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    if-nez v0, :cond_b

    .line 210
    .line 211
    new-instance p2, Lg0/c;

    .line 212
    .line 213
    new-instance v0, Lq0/a;

    .line 214
    .line 215
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v1}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-direct {p2, v0}, Lg0/c;-><init>(Ljava/util/List;)V

    .line 227
    .line 228
    .line 229
    iput-object p2, p0, Lg0/o;->k:Lg0/c;

    .line 230
    .line 231
    :cond_b
    iget-object p2, p0, Lg0/o;->k:Lg0/c;

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_c
    sget-object v0, Ld0/q;->p:Ljava/lang/Float;

    .line 236
    .line 237
    if-ne p2, v0, :cond_e

    .line 238
    .line 239
    iget-object p2, p0, Lg0/o;->l:Lg0/c;

    .line 240
    .line 241
    if-eqz p2, :cond_e

    .line 242
    .line 243
    if-nez p2, :cond_d

    .line 244
    .line 245
    new-instance p2, Lg0/c;

    .line 246
    .line 247
    new-instance v0, Lq0/a;

    .line 248
    .line 249
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Lq0/a;-><init>(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-direct {p2, v0}, Lg0/c;-><init>(Ljava/util/List;)V

    .line 261
    .line 262
    .line 263
    iput-object p2, p0, Lg0/o;->l:Lg0/c;

    .line 264
    .line 265
    :cond_d
    iget-object p2, p0, Lg0/o;->l:Lg0/c;

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :goto_1
    const/4 p1, 0x1

    .line 270
    return p1

    .line 271
    :cond_e
    const/4 p1, 0x0

    .line 272
    return p1
.end method

.method public final d()Landroid/graphics/Matrix;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lg0/o;->a:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lg0/o;->g:Lg0/a;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/graphics/PointF;

    .line 18
    .line 19
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 20
    .line 21
    cmpl-float v5, v4, v3

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    cmpl-float v5, v5, v3

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    :cond_0
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v2, v0, Lg0/o;->i:Lg0/a;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    instance-of v4, v2, Lg0/p;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Float;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    check-cast v2, Lg0/c;

    .line 56
    .line 57
    invoke-virtual {v2}, Lg0/c;->l()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    :goto_0
    cmpl-float v4, v2, v3

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v2, v0, Lg0/o;->k:Lg0/c;

    .line 69
    .line 70
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    if-eqz v2, :cond_9

    .line 73
    .line 74
    iget-object v2, v0, Lg0/o;->l:Lg0/c;

    .line 75
    .line 76
    const/high16 v5, 0x42b40000    # 90.0f

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v2}, Lg0/c;->l()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    neg-float v2, v2

    .line 87
    add-float/2addr v2, v5

    .line 88
    float-to-double v6, v2

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    double-to-float v2, v6

    .line 98
    :goto_1
    iget-object v6, v0, Lg0/o;->l:Lg0/c;

    .line 99
    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    const/high16 v5, 0x3f800000    # 1.0f

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v6}, Lg0/c;->l()F

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    neg-float v6, v6

    .line 110
    add-float/2addr v6, v5

    .line 111
    float-to-double v5, v6

    .line 112
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    double-to-float v5, v5

    .line 121
    :goto_2
    iget-object v6, v0, Lg0/o;->k:Lg0/c;

    .line 122
    .line 123
    invoke-virtual {v6}, Lg0/c;->l()F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    float-to-double v6, v6

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v6

    .line 136
    double-to-float v6, v6

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v8, 0x0

    .line 139
    :goto_3
    const/16 v9, 0x9

    .line 140
    .line 141
    iget-object v10, v0, Lg0/o;->e:[F

    .line 142
    .line 143
    if-ge v8, v9, :cond_6

    .line 144
    .line 145
    aput v3, v10, v8

    .line 146
    .line 147
    add-int/lit8 v8, v8, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    aput v2, v10, v7

    .line 151
    .line 152
    const/4 v8, 0x1

    .line 153
    aput v5, v10, v8

    .line 154
    .line 155
    neg-float v11, v5

    .line 156
    const/4 v12, 0x3

    .line 157
    aput v11, v10, v12

    .line 158
    .line 159
    const/4 v13, 0x4

    .line 160
    aput v2, v10, v13

    .line 161
    .line 162
    const/16 v14, 0x8

    .line 163
    .line 164
    aput v4, v10, v14

    .line 165
    .line 166
    iget-object v15, v0, Lg0/o;->b:Landroid/graphics/Matrix;

    .line 167
    .line 168
    invoke-virtual {v15, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 169
    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    :goto_4
    if-ge v8, v9, :cond_7

    .line 173
    .line 174
    aput v3, v10, v8

    .line 175
    .line 176
    add-int/lit8 v8, v8, 0x1

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_7
    aput v4, v10, v7

    .line 180
    .line 181
    aput v6, v10, v12

    .line 182
    .line 183
    aput v4, v10, v13

    .line 184
    .line 185
    aput v4, v10, v14

    .line 186
    .line 187
    iget-object v6, v0, Lg0/o;->c:Landroid/graphics/Matrix;

    .line 188
    .line 189
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 190
    .line 191
    .line 192
    const/4 v8, 0x0

    .line 193
    :goto_5
    if-ge v8, v9, :cond_8

    .line 194
    .line 195
    aput v3, v10, v8

    .line 196
    .line 197
    add-int/lit8 v8, v8, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    aput v2, v10, v7

    .line 201
    .line 202
    const/4 v7, 0x1

    .line 203
    aput v11, v10, v7

    .line 204
    .line 205
    aput v5, v10, v12

    .line 206
    .line 207
    aput v2, v10, v13

    .line 208
    .line 209
    aput v4, v10, v14

    .line 210
    .line 211
    iget-object v2, v0, Lg0/o;->d:Landroid/graphics/Matrix;

    .line 212
    .line 213
    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 223
    .line 224
    .line 225
    :cond_9
    iget-object v2, v0, Lg0/o;->h:Lg0/a;

    .line 226
    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lq0/d;

    .line 234
    .line 235
    iget v5, v2, Lq0/d;->a:F

    .line 236
    .line 237
    cmpl-float v6, v5, v4

    .line 238
    .line 239
    if-nez v6, :cond_a

    .line 240
    .line 241
    iget v6, v2, Lq0/d;->b:F

    .line 242
    .line 243
    cmpl-float v4, v6, v4

    .line 244
    .line 245
    if-eqz v4, :cond_b

    .line 246
    .line 247
    :cond_a
    iget v2, v2, Lq0/d;->b:F

    .line 248
    .line 249
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 250
    .line 251
    .line 252
    :cond_b
    iget-object v2, v0, Lg0/o;->f:Lg0/a;

    .line 253
    .line 254
    if-eqz v2, :cond_d

    .line 255
    .line 256
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Landroid/graphics/PointF;

    .line 261
    .line 262
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 263
    .line 264
    cmpl-float v5, v4, v3

    .line 265
    .line 266
    if-nez v5, :cond_c

    .line 267
    .line 268
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 269
    .line 270
    cmpl-float v3, v5, v3

    .line 271
    .line 272
    if-eqz v3, :cond_d

    .line 273
    .line 274
    :cond_c
    neg-float v3, v4

    .line 275
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 276
    .line 277
    neg-float v2, v2

    .line 278
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 279
    .line 280
    .line 281
    :cond_d
    return-object v1
.end method

.method public final e(F)Landroid/graphics/Matrix;
    .locals 8

    .line 1
    iget-object v0, p0, Lg0/o;->g:Lg0/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lg0/o;->h:Lg0/a;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lq0/d;

    .line 25
    .line 26
    :goto_1
    iget-object v3, p0, Lg0/o;->a:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 34
    .line 35
    mul-float v4, v4, p1

    .line 36
    .line 37
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 38
    .line 39
    mul-float v0, v0, p1

    .line 40
    .line 41
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget v0, v2, Lq0/d;->a:F

    .line 47
    .line 48
    float-to-double v4, v0

    .line 49
    float-to-double v6, p1

    .line 50
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    double-to-float v0, v4

    .line 55
    iget v2, v2, Lq0/d;->b:F

    .line 56
    .line 57
    float-to-double v4, v2

    .line 58
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    double-to-float v2, v4

    .line 63
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lg0/o;->i:Lg0/a;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lg0/a;->f()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Float;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v2, p0, Lg0/o;->f:Lg0/a;

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v2}, Lg0/a;->f()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/graphics/PointF;

    .line 90
    .line 91
    :goto_2
    mul-float v0, v0, p1

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 99
    .line 100
    :goto_3
    if-nez v1, :cond_6

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    .line 104
    .line 105
    :goto_4
    invoke-virtual {v3, v0, v2, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 106
    .line 107
    .line 108
    :cond_7
    return-object v3
.end method
