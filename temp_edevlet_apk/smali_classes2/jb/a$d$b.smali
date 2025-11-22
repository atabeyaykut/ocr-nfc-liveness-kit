.class public final Ljb/a$d$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljb/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Ljb/a$d;",
        "Ljb/a$d$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/a$d$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
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

    invoke-direct {p0}, Lmb/h$a;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljb/a$d$b;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljb/a$d$b;->d:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Ljb/a$d$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljb/a$d$b;->k()Ljb/a$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljb/a$d;->b()Z

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
    new-instance v0, Ljb/a$d$b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$d$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljb/a$d$b;->k()Ljb/a$d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljb/a$d$b;->l(Ljb/a$d;)V

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

    invoke-virtual {p0, p1, p2}, Ljb/a$d$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Ljb/a$d$b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljb/a$d$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljb/a$d$b;->k()Ljb/a$d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljb/a$d$b;->l(Ljb/a$d;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Ljb/a$d;

    invoke-virtual {p0, p1}, Ljb/a$d$b;->l(Ljb/a$d;)V

    return-object p0
.end method

.method public final k()Ljb/a$d;
    .locals 3

    .line 1
    new-instance v0, Ljb/a$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljb/a$d;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Ljb/a$d$b;->b:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v1, v2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 19
    .line 20
    iget v1, p0, Ljb/a$d$b;->b:I

    .line 21
    .line 22
    and-int/lit8 v1, v1, -0x2

    .line 23
    .line 24
    iput v1, p0, Ljb/a$d$b;->b:I

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 27
    .line 28
    iput-object v1, v0, Ljb/a$d;->b:Ljava/util/List;

    .line 29
    .line 30
    iget v1, p0, Ljb/a$d$b;->b:I

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    and-int/2addr v1, v2

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 43
    .line 44
    iget v1, p0, Ljb/a$d$b;->b:I

    .line 45
    .line 46
    and-int/lit8 v1, v1, -0x3

    .line 47
    .line 48
    iput v1, p0, Ljb/a$d$b;->b:I

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 51
    .line 52
    iput-object v1, v0, Ljb/a$d;->c:Ljava/util/List;

    .line 53
    .line 54
    return-object v0
.end method

.method public final l(Ljb/a$d;)V
    .locals 3

    .line 1
    sget-object v0, Ljb/a$d;->g:Ljb/a$d;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Ljb/a$d;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Ljb/a$d;->b:Ljava/util/List;

    .line 23
    .line 24
    iput-object v0, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 25
    .line 26
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 27
    .line 28
    and-int/lit8 v0, v0, -0x2

    .line 29
    .line 30
    iput v0, p0, Ljb/a$d$b;->b:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    and-int/2addr v0, v1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v2, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 47
    .line 48
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    iput v0, p0, Ljb/a$d$b;->b:I

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Ljb/a$d$b;->c:Ljava/util/List;

    .line 54
    .line 55
    iget-object v1, p1, Ljb/a$d;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iget-object v0, p1, Ljb/a$d;->c:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p1, Ljb/a$d;->c:Ljava/util/List;

    .line 77
    .line 78
    iput-object v0, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 79
    .line 80
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 81
    .line 82
    and-int/lit8 v0, v0, -0x3

    .line 83
    .line 84
    iput v0, p0, Ljb/a$d$b;->b:I

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 88
    .line 89
    const/4 v1, 0x2

    .line 90
    and-int/2addr v0, v1

    .line 91
    if-eq v0, v1, :cond_5

    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object v2, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 101
    .line 102
    iget v0, p0, Ljb/a$d$b;->b:I

    .line 103
    .line 104
    or-int/2addr v0, v1

    .line 105
    iput v0, p0, Ljb/a$d$b;->b:I

    .line 106
    .line 107
    :cond_5
    iget-object v0, p0, Ljb/a$d$b;->d:Ljava/util/List;

    .line 108
    .line 109
    iget-object v1, p1, Ljb/a$d;->c:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_1
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 115
    .line 116
    iget-object p1, p1, Ljb/a$d;->a:Lmb/c;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 123
    .line 124
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
    sget-object v0, Ljb/a$d;->h:Ljb/a$d$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljb/a$d;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Ljb/a$d;-><init>(Lmb/d;Lmb/f;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljb/a$d$b;->l(Ljb/a$d;)V

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
    check-cast p2, Ljb/a$d;
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
    invoke-virtual {p0, p2}, Ljb/a$d$b;->l(Ljb/a$d;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
