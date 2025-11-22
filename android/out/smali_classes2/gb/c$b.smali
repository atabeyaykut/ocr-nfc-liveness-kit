.class public final Lgb/c$b;
.super Lmb/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$b<",
        "Lgb/c;",
        "Lgb/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/t;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h$b;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lgb/c$b;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/c$b;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/c$b;->g:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lgb/c$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/c$b;->l()Lgb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/c;->b()Z

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
    new-instance v0, Lgb/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/c$b;->l()Lgb/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/c$b;->n(Lgb/c;)V

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

    invoke-virtual {p0, p1, p2}, Lgb/c$b;->p(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/c$b;->l()Lgb/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/c$b;->n(Lgb/c;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/c;

    invoke-virtual {p0, p1}, Lgb/c$b;->n(Lgb/c;)V

    return-object p0
.end method

.method public final l()Lgb/c;
    .locals 4

    .line 1
    new-instance v0, Lgb/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/c;-><init>(Lmb/h$b;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/c$b;->d:I

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
    iget v2, p0, Lgb/c$b;->e:I

    .line 16
    .line 17
    iput v2, v0, Lgb/c;->d:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v1, v2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 30
    .line 31
    iget v1, p0, Lgb/c$b;->d:I

    .line 32
    .line 33
    and-int/lit8 v1, v1, -0x3

    .line 34
    .line 35
    iput v1, p0, Lgb/c$b;->d:I

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 38
    .line 39
    iput-object v1, v0, Lgb/c;->e:Ljava/util/List;

    .line 40
    .line 41
    iget v1, p0, Lgb/c$b;->d:I

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    and-int/2addr v1, v2

    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 54
    .line 55
    iget v1, p0, Lgb/c$b;->d:I

    .line 56
    .line 57
    and-int/lit8 v1, v1, -0x5

    .line 58
    .line 59
    iput v1, p0, Lgb/c$b;->d:I

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 62
    .line 63
    iput-object v1, v0, Lgb/c;->f:Ljava/util/List;

    .line 64
    .line 65
    iput v3, v0, Lgb/c;->c:I

    .line 66
    .line 67
    return-object v0
.end method

.method public final n(Lgb/c;)V
    .locals 3

    .line 1
    sget-object v0, Lgb/c;->j:Lgb/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lgb/c;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p1, Lgb/c;->d:I

    .line 18
    .line 19
    iget v2, p0, Lgb/c$b;->d:I

    .line 20
    .line 21
    or-int/2addr v1, v2

    .line 22
    iput v1, p0, Lgb/c$b;->d:I

    .line 23
    .line 24
    iput v0, p0, Lgb/c$b;->e:I

    .line 25
    .line 26
    :cond_2
    iget-object v0, p1, Lgb/c;->e:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p1, Lgb/c;->e:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 45
    .line 46
    iget v0, p0, Lgb/c$b;->d:I

    .line 47
    .line 48
    and-int/lit8 v0, v0, -0x3

    .line 49
    .line 50
    iput v0, p0, Lgb/c$b;->d:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget v0, p0, Lgb/c$b;->d:I

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    and-int/2addr v0, v1

    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v2, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 67
    .line 68
    iget v0, p0, Lgb/c$b;->d:I

    .line 69
    .line 70
    or-int/2addr v0, v1

    .line 71
    iput v0, p0, Lgb/c$b;->d:I

    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lgb/c$b;->f:Ljava/util/List;

    .line 74
    .line 75
    iget-object v1, p1, Lgb/c;->e:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_1
    iget-object v0, p1, Lgb/c;->f:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_8

    .line 87
    .line 88
    iget-object v0, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v0, p1, Lgb/c;->f:Ljava/util/List;

    .line 97
    .line 98
    iput-object v0, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 99
    .line 100
    iget v0, p0, Lgb/c$b;->d:I

    .line 101
    .line 102
    and-int/lit8 v0, v0, -0x5

    .line 103
    .line 104
    iput v0, p0, Lgb/c$b;->d:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    iget v0, p0, Lgb/c$b;->d:I

    .line 108
    .line 109
    const/4 v1, 0x4

    .line 110
    and-int/2addr v0, v1

    .line 111
    if-eq v0, v1, :cond_7

    .line 112
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v2, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 121
    .line 122
    iget v0, p0, Lgb/c$b;->d:I

    .line 123
    .line 124
    or-int/2addr v0, v1

    .line 125
    iput v0, p0, Lgb/c$b;->d:I

    .line 126
    .line 127
    :cond_7
    iget-object v0, p0, Lgb/c$b;->g:Ljava/util/List;

    .line 128
    .line 129
    iget-object v1, p1, Lgb/c;->f:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lmb/h$b;->k(Lmb/h$c;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 138
    .line 139
    iget-object p1, p1, Lgb/c;->b:Lmb/c;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 146
    .line 147
    return-void
.end method

.method public final p(Lmb/d;Lmb/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lgb/c;->k:Lgb/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgb/c$a;->a(Lmb/d;Lmb/f;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lgb/c;
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lgb/c$b;->n(Lgb/c;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    iget-object p2, p1, Lmb/j;->a:Lmb/p;

    .line 17
    .line 18
    check-cast p2, Lgb/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :catchall_1
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :goto_0
    const/4 p2, 0x0

    .line 24
    :goto_1
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lgb/c$b;->n(Lgb/c;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    throw p1
.end method
