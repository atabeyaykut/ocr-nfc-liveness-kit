.class public final Lgb/e$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Lgb/e;",
        "Lgb/e$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lgb/e$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lgb/g;

.field public f:Lgb/e$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgb/e$c;->b:Lgb/e$c;

    .line 5
    .line 6
    iput-object v0, p0, Lgb/e$b;->c:Lgb/e$c;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 13
    .line 14
    sget-object v0, Lgb/g;->m:Lgb/g;

    .line 15
    .line 16
    iput-object v0, p0, Lgb/e$b;->e:Lgb/g;

    .line 17
    .line 18
    sget-object v0, Lgb/e$d;->b:Lgb/e$d;

    .line 19
    .line 20
    iput-object v0, p0, Lgb/e$b;->f:Lgb/e$d;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final bridge synthetic E(Lmb/d;Lmb/f;)Lmb/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/e$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/e$b;->k()Lgb/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/e;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lc0/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lc0/a;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/e$b;->k()Lgb/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/e$b;->l(Lgb/e;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic h(Lmb/d;Lmb/f;)Lmb/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/e$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/e$b;->k()Lgb/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/e$b;->l(Lgb/e;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/e;

    invoke-virtual {p0, p1}, Lgb/e$b;->l(Lgb/e;)V

    return-object p0
.end method

.method public final k()Lgb/e;
    .locals 5

    .line 1
    new-instance v0, Lgb/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/e;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/e$b;->b:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lgb/e$b;->c:Lgb/e$c;

    .line 16
    .line 17
    iput-object v2, v0, Lgb/e;->c:Lgb/e$c;

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x2

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 31
    .line 32
    iget v2, p0, Lgb/e$b;->b:I

    .line 33
    .line 34
    and-int/lit8 v2, v2, -0x3

    .line 35
    .line 36
    iput v2, p0, Lgb/e$b;->b:I

    .line 37
    .line 38
    :cond_1
    iget-object v2, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 39
    .line 40
    iput-object v2, v0, Lgb/e;->d:Ljava/util/List;

    .line 41
    .line 42
    and-int/lit8 v2, v1, 0x4

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    if-ne v2, v4, :cond_2

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x2

    .line 48
    .line 49
    :cond_2
    iget-object v2, p0, Lgb/e$b;->e:Lgb/g;

    .line 50
    .line 51
    iput-object v2, v0, Lgb/e;->e:Lgb/g;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    and-int/2addr v1, v2

    .line 56
    if-ne v1, v2, :cond_3

    .line 57
    .line 58
    or-int/lit8 v3, v3, 0x4

    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, Lgb/e$b;->f:Lgb/e$d;

    .line 61
    .line 62
    iput-object v1, v0, Lgb/e;->f:Lgb/e$d;

    .line 63
    .line 64
    iput v3, v0, Lgb/e;->b:I

    .line 65
    .line 66
    return-object v0
.end method

.method public final l(Lgb/e;)V
    .locals 6

    .line 1
    sget-object v0, Lgb/e;->j:Lgb/e;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/e;->b:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p1, Lgb/e;->c:Lgb/e$c;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget v3, p0, Lgb/e$b;->b:I

    .line 24
    .line 25
    or-int/2addr v3, v1

    .line 26
    iput v3, p0, Lgb/e$b;->b:I

    .line 27
    .line 28
    iput-object v0, p0, Lgb/e$b;->c:Lgb/e$c;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p1, Lgb/e;->d:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x2

    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    iget-object v0, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p1, Lgb/e;->d:Ljava/util/List;

    .line 48
    .line 49
    iput-object v0, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 50
    .line 51
    iget v0, p0, Lgb/e$b;->b:I

    .line 52
    .line 53
    and-int/lit8 v0, v0, -0x3

    .line 54
    .line 55
    iput v0, p0, Lgb/e$b;->b:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget v0, p0, Lgb/e$b;->b:I

    .line 59
    .line 60
    and-int/2addr v0, v3

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v4, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 66
    .line 67
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 71
    .line 72
    iget v0, p0, Lgb/e$b;->b:I

    .line 73
    .line 74
    or-int/2addr v0, v3

    .line 75
    iput v0, p0, Lgb/e$b;->b:I

    .line 76
    .line 77
    :cond_4
    iget-object v0, p0, Lgb/e$b;->d:Ljava/util/List;

    .line 78
    .line 79
    iget-object v4, p1, Lgb/e;->d:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_1
    iget v0, p1, Lgb/e;->b:I

    .line 85
    .line 86
    and-int/2addr v0, v3

    .line 87
    if-ne v0, v3, :cond_6

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    const/4 v0, 0x0

    .line 92
    :goto_2
    const/4 v3, 0x4

    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    iget-object v0, p1, Lgb/e;->e:Lgb/g;

    .line 96
    .line 97
    iget v4, p0, Lgb/e$b;->b:I

    .line 98
    .line 99
    and-int/2addr v4, v3

    .line 100
    if-ne v4, v3, :cond_7

    .line 101
    .line 102
    iget-object v4, p0, Lgb/e$b;->e:Lgb/g;

    .line 103
    .line 104
    sget-object v5, Lgb/g;->m:Lgb/g;

    .line 105
    .line 106
    if-eq v4, v5, :cond_7

    .line 107
    .line 108
    new-instance v5, Lgb/g$b;

    .line 109
    .line 110
    invoke-direct {v5}, Lgb/g$b;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v4}, Lgb/g$b;->l(Lgb/g;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v0}, Lgb/g$b;->l(Lgb/g;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lgb/g$b;->k()Lgb/g;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_7
    iput-object v0, p0, Lgb/e$b;->e:Lgb/g;

    .line 124
    .line 125
    iget v0, p0, Lgb/e$b;->b:I

    .line 126
    .line 127
    or-int/2addr v0, v3

    .line 128
    iput v0, p0, Lgb/e$b;->b:I

    .line 129
    .line 130
    :cond_8
    iget v0, p1, Lgb/e;->b:I

    .line 131
    .line 132
    and-int/2addr v0, v3

    .line 133
    if-ne v0, v3, :cond_9

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_9
    const/4 v1, 0x0

    .line 137
    :goto_3
    if-eqz v1, :cond_a

    .line 138
    .line 139
    iget-object v0, p1, Lgb/e;->f:Lgb/e$d;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget v1, p0, Lgb/e$b;->b:I

    .line 145
    .line 146
    or-int/lit8 v1, v1, 0x8

    .line 147
    .line 148
    iput v1, p0, Lgb/e$b;->b:I

    .line 149
    .line 150
    iput-object v0, p0, Lgb/e$b;->f:Lgb/e$d;

    .line 151
    .line 152
    :cond_a
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 153
    .line 154
    iget-object p1, p1, Lgb/e;->a:Lmb/c;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 161
    .line 162
    return-void
.end method

.method public final n(Lmb/d;Lmb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lgb/e;->k:Lgb/e$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgb/e;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lgb/e;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lgb/e$b;->l(Lgb/e;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    :try_start_1
    iget-object p2, p1, Lmb/j;->a:Lmb/p;

    .line 20
    .line 21
    check-cast p2, Lgb/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    const/4 p2, 0x0

    .line 27
    :goto_2
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lgb/e$b;->l(Lgb/e;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
