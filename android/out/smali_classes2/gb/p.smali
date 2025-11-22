.class public final Lgb/p;
.super Lmb/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/p$c;,
        Lgb/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$c<",
        "Lgb/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final w:Lgb/p;

.field public static final x:Lgb/p$a;


# instance fields
.field public final b:Lmb/c;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/p$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:Lgb/p;

.field public h:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lgb/p;

.field public p:I

.field public q:Lgb/p;

.field public r:I

.field public s:I

.field public t:B

.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgb/p$a;

    invoke-direct {v0}, Lgb/p$a;-><init>()V

    sput-object v0, Lgb/p;->x:Lgb/p$a;

    new-instance v0, Lgb/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/p;-><init>(I)V

    sput-object v0, Lgb/p;->w:Lgb/p;

    invoke-virtual {v0}, Lgb/p;->r()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lgb/p;->t:B

    iput p1, p0, Lgb/p;->v:I

    sget-object p1, Lmb/c;->a:Lmb/o;

    iput-object p1, p0, Lgb/p;->b:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h$c;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/p;->t:B

    iput v0, p0, Lgb/p;->v:I

    invoke-virtual {p0}, Lgb/p;->r()V

    .line 2
    new-instance v0, Lmb/c$b;

    invoke-direct {v0}, Lmb/c$b;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-nez v4, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v6
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v7, Lgb/p;->x:Lgb/p$a;

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    :try_start_1
    invoke-virtual {p0, p1, v2, p2, v6}, Lmb/h$c;->o(Lmb/d;Lmb/e;Lmb/f;I)Z

    move-result v6

    goto/16 :goto_4

    :sswitch_0
    iget v6, p0, Lgb/p;->c:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lgb/p;->c:I

    .line 4
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 5
    iput v6, p0, Lgb/p;->r:I

    goto :goto_0

    :sswitch_1
    iget v6, p0, Lgb/p;->c:I

    const/16 v9, 0x400

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lgb/p;->q:Lgb/p;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {v6}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v6

    check-cast v6, Lgb/p;

    iput-object v6, p0, Lgb/p;->q:Lgb/p;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v8}, Lgb/p$c;->l()Lgb/p;

    move-result-object v6

    iput-object v6, p0, Lgb/p;->q:Lgb/p;

    goto/16 :goto_2

    :sswitch_2
    iget v6, p0, Lgb/p;->c:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lgb/p;->c:I

    .line 8
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 9
    iput v6, p0, Lgb/p;->m:I

    goto :goto_0

    :sswitch_3
    iget v6, p0, Lgb/p;->c:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lgb/p;->c:I

    .line 10
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 11
    iput v6, p0, Lgb/p;->p:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, Lgb/p;->c:I

    const/16 v9, 0x100

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lgb/p;->n:Lgb/p;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v6}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v8

    .line 13
    :cond_2
    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v6

    check-cast v6, Lgb/p;

    iput-object v6, p0, Lgb/p;->n:Lgb/p;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v8}, Lgb/p$c;->l()Lgb/p;

    move-result-object v6

    iput-object v6, p0, Lgb/p;->n:Lgb/p;

    goto :goto_2

    :sswitch_5
    iget v6, p0, Lgb/p;->c:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lgb/p;->c:I

    .line 14
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 15
    iput v6, p0, Lgb/p;->l:I

    goto/16 :goto_0

    :sswitch_6
    iget v6, p0, Lgb/p;->c:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lgb/p;->c:I

    .line 16
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 17
    iput v6, p0, Lgb/p;->h:I

    goto/16 :goto_0

    :sswitch_7
    iget v6, p0, Lgb/p;->c:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lgb/p;->c:I

    .line 18
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 19
    iput v6, p0, Lgb/p;->k:I

    goto/16 :goto_0

    :sswitch_8
    iget v6, p0, Lgb/p;->c:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lgb/p;->c:I

    .line 20
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 21
    iput v6, p0, Lgb/p;->j:I

    goto/16 :goto_0

    :sswitch_9
    iget v6, p0, Lgb/p;->c:I

    const/4 v9, 0x4

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lgb/p;->g:Lgb/p;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v6}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v8

    .line 23
    :cond_3
    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v6

    check-cast v6, Lgb/p;

    iput-object v6, p0, Lgb/p;->g:Lgb/p;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    invoke-virtual {v8}, Lgb/p$c;->l()Lgb/p;

    move-result-object v6

    iput-object v6, p0, Lgb/p;->g:Lgb/p;

    :cond_4
    :goto_2
    iget v6, p0, Lgb/p;->c:I

    or-int/2addr v6, v9

    iput v6, p0, Lgb/p;->c:I

    goto/16 :goto_0

    :sswitch_a
    iget v6, p0, Lgb/p;->c:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lgb/p;->c:I

    .line 24
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 25
    iput v6, p0, Lgb/p;->f:I

    goto/16 :goto_0

    :sswitch_b
    iget v6, p0, Lgb/p;->c:I

    or-int/2addr v6, v1

    iput v6, p0, Lgb/p;->c:I

    .line 26
    invoke-virtual {p1}, Lmb/d;->l()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 27
    :goto_3
    iput-boolean v6, p0, Lgb/p;->e:Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v6, v5, 0x1

    if-eq v6, v1, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lgb/p;->d:Ljava/util/List;

    or-int/lit8 v5, v5, 0x1

    :cond_6
    iget-object v6, p0, Lgb/p;->d:Ljava/util/List;

    sget-object v7, Lgb/p$b;->j:Lgb/p$b$a;

    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    iget v6, p0, Lgb/p;->c:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lgb/p;->c:I

    .line 28
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 29
    iput v6, p0, Lgb/p;->s:I
    :try_end_1
    .catch Lmb/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_4
    if-nez v6, :cond_0

    :sswitch_e
    const/4 v4, 0x1

    goto/16 :goto_0

    :goto_5
    :try_start_2
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 31
    throw p2

    :catch_1
    move-exception p1

    .line 32
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 33
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    and-int/lit8 p2, v5, 0x1

    if-ne p2, v1, :cond_7

    iget-object p2, p0, Lgb/p;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/p;->d:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p;->b:Lmb/c;

    throw p1

    :catch_2
    :goto_7
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    throw p1

    :cond_8
    and-int/lit8 p1, v5, 0x1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lgb/p;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/p;->d:Ljava/util/List;

    :cond_9
    :try_start_4
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/p;->b:Lmb/c;

    throw p1

    :catch_3
    :goto_8
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/p;->b:Lmb/c;

    invoke-virtual {p0}, Lmb/h$c;->m()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x18 -> :sswitch_b
        0x20 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lmb/h$b;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lmb/h$c;-><init>(Lmb/h$b;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/p;->t:B

    iput v0, p0, Lgb/p;->v:I

    .line 35
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 36
    iput-object p1, p0, Lgb/p;->b:Lmb/c;

    return-void
.end method

.method public static s(Lgb/p;)Lgb/p$c;
    .locals 1

    .line 1
    new-instance v0, Lgb/p$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/p$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/p$c;->n(Lgb/p;)Lgb/p$c;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/p;->t:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lgb/p;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_3

    .line 19
    .line 20
    iget-object v3, p0, Lgb/p;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lgb/p$b;

    .line 27
    .line 28
    invoke-virtual {v3}, Lgb/p$b;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    iput-byte v2, p0, Lgb/p;->t:B

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget v0, p0, Lgb/p;->c:I

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    and-int/2addr v0, v3

    .line 44
    if-ne v0, v3, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const/4 v0, 0x0

    .line 49
    :goto_1
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lgb/p;->g:Lgb/p;

    .line 52
    .line 53
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    iput-byte v2, p0, Lgb/p;->t:B

    .line 60
    .line 61
    return v2

    .line 62
    :cond_5
    iget v0, p0, Lgb/p;->c:I

    .line 63
    .line 64
    const/16 v3, 0x100

    .line 65
    .line 66
    and-int/2addr v0, v3

    .line 67
    if-ne v0, v3, :cond_6

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_6
    const/4 v0, 0x0

    .line 72
    :goto_2
    if-eqz v0, :cond_7

    .line 73
    .line 74
    iget-object v0, p0, Lgb/p;->n:Lgb/p;

    .line 75
    .line 76
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    iput-byte v2, p0, Lgb/p;->t:B

    .line 83
    .line 84
    return v2

    .line 85
    :cond_7
    iget v0, p0, Lgb/p;->c:I

    .line 86
    .line 87
    const/16 v3, 0x400

    .line 88
    .line 89
    and-int/2addr v0, v3

    .line 90
    if-ne v0, v3, :cond_8

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_8
    const/4 v0, 0x0

    .line 95
    :goto_3
    if-eqz v0, :cond_9

    .line 96
    .line 97
    iget-object v0, p0, Lgb/p;->q:Lgb/p;

    .line 98
    .line 99
    invoke-virtual {v0}, Lgb/p;->b()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    iput-byte v2, p0, Lgb/p;->t:B

    .line 106
    .line 107
    return v2

    .line 108
    :cond_9
    invoke-virtual {p0}, Lmb/h$c;->i()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_a

    .line 113
    .line 114
    iput-byte v2, p0, Lgb/p;->t:B

    .line 115
    .line 116
    return v2

    .line 117
    :cond_a
    iput-byte v1, p0, Lgb/p;->t:B

    .line 118
    .line 119
    return v1
.end method

.method public final c()I
    .locals 5

    .line 1
    iget v0, p0, Lgb/p;->v:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lgb/p;->c:I

    .line 8
    .line 9
    const/16 v1, 0x1000

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lgb/p;->s:I

    .line 17
    .line 18
    invoke-static {v3, v0}, Lmb/e;->b(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lgb/p;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v4, 0x2

    .line 32
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lgb/p;->d:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lmb/p;

    .line 41
    .line 42
    invoke-static {v4, v1}, Lmb/e;->d(ILmb/p;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget v1, p0, Lgb/p;->c:I

    .line 51
    .line 52
    and-int/2addr v1, v3

    .line 53
    if-ne v1, v3, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-static {v1}, Lmb/e;->h(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v3

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_3
    iget v1, p0, Lgb/p;->c:I

    .line 63
    .line 64
    and-int/2addr v1, v4

    .line 65
    const/4 v2, 0x4

    .line 66
    if-ne v1, v4, :cond_4

    .line 67
    .line 68
    iget v1, p0, Lgb/p;->f:I

    .line 69
    .line 70
    invoke-static {v2, v1}, Lmb/e;->b(II)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_4
    iget v1, p0, Lgb/p;->c:I

    .line 76
    .line 77
    and-int/2addr v1, v2

    .line 78
    if-ne v1, v2, :cond_5

    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    iget-object v2, p0, Lgb/p;->g:Lgb/p;

    .line 82
    .line 83
    invoke-static {v1, v2}, Lmb/e;->d(ILmb/p;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_5
    iget v1, p0, Lgb/p;->c:I

    .line 89
    .line 90
    const/16 v2, 0x10

    .line 91
    .line 92
    and-int/2addr v1, v2

    .line 93
    if-ne v1, v2, :cond_6

    .line 94
    .line 95
    const/4 v1, 0x6

    .line 96
    iget v2, p0, Lgb/p;->j:I

    .line 97
    .line 98
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    add-int/2addr v0, v1

    .line 103
    :cond_6
    iget v1, p0, Lgb/p;->c:I

    .line 104
    .line 105
    const/16 v2, 0x20

    .line 106
    .line 107
    and-int/2addr v1, v2

    .line 108
    if-ne v1, v2, :cond_7

    .line 109
    .line 110
    const/4 v1, 0x7

    .line 111
    iget v2, p0, Lgb/p;->k:I

    .line 112
    .line 113
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    add-int/2addr v0, v1

    .line 118
    :cond_7
    iget v1, p0, Lgb/p;->c:I

    .line 119
    .line 120
    const/16 v2, 0x8

    .line 121
    .line 122
    and-int/2addr v1, v2

    .line 123
    if-ne v1, v2, :cond_8

    .line 124
    .line 125
    iget v1, p0, Lgb/p;->h:I

    .line 126
    .line 127
    invoke-static {v2, v1}, Lmb/e;->b(II)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    add-int/2addr v0, v1

    .line 132
    :cond_8
    iget v1, p0, Lgb/p;->c:I

    .line 133
    .line 134
    const/16 v2, 0x40

    .line 135
    .line 136
    and-int/2addr v1, v2

    .line 137
    if-ne v1, v2, :cond_9

    .line 138
    .line 139
    const/16 v1, 0x9

    .line 140
    .line 141
    iget v2, p0, Lgb/p;->l:I

    .line 142
    .line 143
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    add-int/2addr v0, v1

    .line 148
    :cond_9
    iget v1, p0, Lgb/p;->c:I

    .line 149
    .line 150
    const/16 v2, 0x100

    .line 151
    .line 152
    and-int/2addr v1, v2

    .line 153
    if-ne v1, v2, :cond_a

    .line 154
    .line 155
    const/16 v1, 0xa

    .line 156
    .line 157
    iget-object v2, p0, Lgb/p;->n:Lgb/p;

    .line 158
    .line 159
    invoke-static {v1, v2}, Lmb/e;->d(ILmb/p;)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    add-int/2addr v0, v1

    .line 164
    :cond_a
    iget v1, p0, Lgb/p;->c:I

    .line 165
    .line 166
    const/16 v2, 0x200

    .line 167
    .line 168
    and-int/2addr v1, v2

    .line 169
    if-ne v1, v2, :cond_b

    .line 170
    .line 171
    const/16 v1, 0xb

    .line 172
    .line 173
    iget v2, p0, Lgb/p;->p:I

    .line 174
    .line 175
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    :cond_b
    iget v1, p0, Lgb/p;->c:I

    .line 181
    .line 182
    const/16 v2, 0x80

    .line 183
    .line 184
    and-int/2addr v1, v2

    .line 185
    if-ne v1, v2, :cond_c

    .line 186
    .line 187
    const/16 v1, 0xc

    .line 188
    .line 189
    iget v2, p0, Lgb/p;->m:I

    .line 190
    .line 191
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v0, v1

    .line 196
    :cond_c
    iget v1, p0, Lgb/p;->c:I

    .line 197
    .line 198
    const/16 v2, 0x400

    .line 199
    .line 200
    and-int/2addr v1, v2

    .line 201
    if-ne v1, v2, :cond_d

    .line 202
    .line 203
    const/16 v1, 0xd

    .line 204
    .line 205
    iget-object v2, p0, Lgb/p;->q:Lgb/p;

    .line 206
    .line 207
    invoke-static {v1, v2}, Lmb/e;->d(ILmb/p;)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    add-int/2addr v0, v1

    .line 212
    :cond_d
    iget v1, p0, Lgb/p;->c:I

    .line 213
    .line 214
    const/16 v2, 0x800

    .line 215
    .line 216
    and-int/2addr v1, v2

    .line 217
    if-ne v1, v2, :cond_e

    .line 218
    .line 219
    const/16 v1, 0xe

    .line 220
    .line 221
    iget v2, p0, Lgb/p;->r:I

    .line 222
    .line 223
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    add-int/2addr v0, v1

    .line 228
    :cond_e
    invoke-virtual {p0}, Lmb/h$c;->j()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    add-int/2addr v1, v0

    .line 233
    iget-object v0, p0, Lgb/p;->b:Lmb/c;

    .line 234
    .line 235
    invoke-virtual {v0}, Lmb/c;->size()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v0, v1

    .line 240
    iput v0, p0, Lgb/p;->v:I

    .line 241
    .line 242
    return v0
.end method

.method public final d(Lmb/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/p;->c()I

    .line 2
    .line 3
    .line 4
    new-instance v0, Lmb/h$c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lmb/h$c$a;-><init>(Lmb/h$c;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lgb/p;->c:I

    .line 10
    .line 11
    const/16 v2, 0x1000

    .line 12
    .line 13
    and-int/2addr v1, v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lgb/p;->s:I

    .line 18
    .line 19
    invoke-virtual {p1, v3, v1}, Lmb/e;->m(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v4, p0, Lgb/p;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x2

    .line 31
    if-ge v2, v4, :cond_1

    .line 32
    .line 33
    iget-object v4, p0, Lgb/p;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lmb/p;

    .line 40
    .line 41
    invoke-virtual {p1, v5, v4}, Lmb/e;->o(ILmb/p;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget v2, p0, Lgb/p;->c:I

    .line 48
    .line 49
    and-int/2addr v2, v3

    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    iget-boolean v2, p0, Lgb/p;->e:Z

    .line 53
    .line 54
    const/4 v3, 0x3

    .line 55
    invoke-virtual {p1, v3, v1}, Lmb/e;->x(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lmb/e;->q(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget v1, p0, Lgb/p;->c:I

    .line 62
    .line 63
    and-int/2addr v1, v5

    .line 64
    const/4 v2, 0x4

    .line 65
    if-ne v1, v5, :cond_3

    .line 66
    .line 67
    iget v1, p0, Lgb/p;->f:I

    .line 68
    .line 69
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget v1, p0, Lgb/p;->c:I

    .line 73
    .line 74
    and-int/2addr v1, v2

    .line 75
    if-ne v1, v2, :cond_4

    .line 76
    .line 77
    const/4 v1, 0x5

    .line 78
    iget-object v2, p0, Lgb/p;->g:Lgb/p;

    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Lmb/e;->o(ILmb/p;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget v1, p0, Lgb/p;->c:I

    .line 84
    .line 85
    const/16 v2, 0x10

    .line 86
    .line 87
    and-int/2addr v1, v2

    .line 88
    if-ne v1, v2, :cond_5

    .line 89
    .line 90
    const/4 v1, 0x6

    .line 91
    iget v2, p0, Lgb/p;->j:I

    .line 92
    .line 93
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget v1, p0, Lgb/p;->c:I

    .line 97
    .line 98
    const/16 v2, 0x20

    .line 99
    .line 100
    and-int/2addr v1, v2

    .line 101
    if-ne v1, v2, :cond_6

    .line 102
    .line 103
    const/4 v1, 0x7

    .line 104
    iget v2, p0, Lgb/p;->k:I

    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 107
    .line 108
    .line 109
    :cond_6
    iget v1, p0, Lgb/p;->c:I

    .line 110
    .line 111
    const/16 v2, 0x8

    .line 112
    .line 113
    and-int/2addr v1, v2

    .line 114
    if-ne v1, v2, :cond_7

    .line 115
    .line 116
    iget v1, p0, Lgb/p;->h:I

    .line 117
    .line 118
    invoke-virtual {p1, v2, v1}, Lmb/e;->m(II)V

    .line 119
    .line 120
    .line 121
    :cond_7
    iget v1, p0, Lgb/p;->c:I

    .line 122
    .line 123
    const/16 v2, 0x40

    .line 124
    .line 125
    and-int/2addr v1, v2

    .line 126
    if-ne v1, v2, :cond_8

    .line 127
    .line 128
    const/16 v1, 0x9

    .line 129
    .line 130
    iget v2, p0, Lgb/p;->l:I

    .line 131
    .line 132
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 133
    .line 134
    .line 135
    :cond_8
    iget v1, p0, Lgb/p;->c:I

    .line 136
    .line 137
    const/16 v2, 0x100

    .line 138
    .line 139
    and-int/2addr v1, v2

    .line 140
    if-ne v1, v2, :cond_9

    .line 141
    .line 142
    const/16 v1, 0xa

    .line 143
    .line 144
    iget-object v2, p0, Lgb/p;->n:Lgb/p;

    .line 145
    .line 146
    invoke-virtual {p1, v1, v2}, Lmb/e;->o(ILmb/p;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    iget v1, p0, Lgb/p;->c:I

    .line 150
    .line 151
    const/16 v2, 0x200

    .line 152
    .line 153
    and-int/2addr v1, v2

    .line 154
    if-ne v1, v2, :cond_a

    .line 155
    .line 156
    const/16 v1, 0xb

    .line 157
    .line 158
    iget v2, p0, Lgb/p;->p:I

    .line 159
    .line 160
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 161
    .line 162
    .line 163
    :cond_a
    iget v1, p0, Lgb/p;->c:I

    .line 164
    .line 165
    const/16 v2, 0x80

    .line 166
    .line 167
    and-int/2addr v1, v2

    .line 168
    if-ne v1, v2, :cond_b

    .line 169
    .line 170
    const/16 v1, 0xc

    .line 171
    .line 172
    iget v2, p0, Lgb/p;->m:I

    .line 173
    .line 174
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 175
    .line 176
    .line 177
    :cond_b
    iget v1, p0, Lgb/p;->c:I

    .line 178
    .line 179
    const/16 v2, 0x400

    .line 180
    .line 181
    and-int/2addr v1, v2

    .line 182
    if-ne v1, v2, :cond_c

    .line 183
    .line 184
    const/16 v1, 0xd

    .line 185
    .line 186
    iget-object v2, p0, Lgb/p;->q:Lgb/p;

    .line 187
    .line 188
    invoke-virtual {p1, v1, v2}, Lmb/e;->o(ILmb/p;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    iget v1, p0, Lgb/p;->c:I

    .line 192
    .line 193
    const/16 v2, 0x800

    .line 194
    .line 195
    and-int/2addr v1, v2

    .line 196
    if-ne v1, v2, :cond_d

    .line 197
    .line 198
    const/16 v1, 0xe

    .line 199
    .line 200
    iget v2, p0, Lgb/p;->r:I

    .line 201
    .line 202
    invoke-virtual {p1, v1, v2}, Lmb/e;->m(II)V

    .line 203
    .line 204
    .line 205
    :cond_d
    const/16 v1, 0xc8

    .line 206
    .line 207
    invoke-virtual {v0, v1, p1}, Lmb/h$c$a;->a(ILmb/e;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lgb/p;->b:Lmb/c;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final e()Lmb/p;
    .locals 1

    sget-object v0, Lgb/p;->w:Lgb/p;

    return-object v0
.end method

.method public final f()Lmb/p$a;
    .locals 1

    invoke-static {p0}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/p$c;

    invoke-direct {v0}, Lgb/p$c;-><init>()V

    return-object v0
.end method

.method public final q()Z
    .locals 2

    iget v0, p0, Lgb/p;->c:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgb/p;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgb/p;->e:Z

    iput v0, p0, Lgb/p;->f:I

    sget-object v1, Lgb/p;->w:Lgb/p;

    iput-object v1, p0, Lgb/p;->g:Lgb/p;

    iput v0, p0, Lgb/p;->h:I

    iput v0, p0, Lgb/p;->j:I

    iput v0, p0, Lgb/p;->k:I

    iput v0, p0, Lgb/p;->l:I

    iput v0, p0, Lgb/p;->m:I

    iput-object v1, p0, Lgb/p;->n:Lgb/p;

    iput v0, p0, Lgb/p;->p:I

    iput-object v1, p0, Lgb/p;->q:Lgb/p;

    iput v0, p0, Lgb/p;->r:I

    iput v0, p0, Lgb/p;->s:I

    return-void
.end method

.method public final t()Lgb/p$c;
    .locals 1

    invoke-static {p0}, Lgb/p;->s(Lgb/p;)Lgb/p$c;

    move-result-object v0

    return-object v0
.end method
