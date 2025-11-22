.class public final Lgb/a$b$c;
.super Lmb/h;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/a$b$c$b;,
        Lgb/a$b$c$c;
    }
.end annotation


# static fields
.field public static final r:Lgb/a$b$c;

.field public static final s:Lgb/a$b$c$a;


# instance fields
.field public final a:Lmb/c;

.field public b:I

.field public c:Lgb/a$b$c$c;

.field public d:J

.field public e:F

.field public f:D

.field public g:I

.field public h:I

.field public j:I

.field public k:Lgb/a;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/a$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public p:B

.field public q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgb/a$b$c$a;

    invoke-direct {v0}, Lgb/a$b$c$a;-><init>()V

    sput-object v0, Lgb/a$b$c;->s:Lgb/a$b$c$a;

    new-instance v0, Lgb/a$b$c;

    invoke-direct {v0}, Lgb/a$b$c;-><init>()V

    sput-object v0, Lgb/a$b$c;->r:Lgb/a$b$c;

    invoke-virtual {v0}, Lgb/a$b$c;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a$b$c;->p:B

    iput v0, p0, Lgb/a$b$c;->q:I

    sget-object v0, Lmb/c;->a:Lmb/o;

    iput-object v0, p0, Lgb/a$b$c;->a:Lmb/c;

    return-void
.end method

.method public constructor <init>(Lmb/d;Lmb/f;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a$b$c;->p:B

    iput v0, p0, Lgb/a$b$c;->q:I

    invoke-virtual {p0}, Lgb/a$b$c;->i()V

    .line 2
    new-instance v0, Lmb/c$b;

    invoke-direct {v0}, Lmb/c$b;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lmb/e;->j(Ljava/io/OutputStream;I)Lmb/e;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lmb/d;->n()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/2addr v6, v5

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 4
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 5
    iput v6, p0, Lgb/a$b$c;->m:I

    goto :goto_0

    :sswitch_1
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 6
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 7
    iput v6, p0, Lgb/a$b$c;->n:I

    goto :goto_0

    :sswitch_2
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lgb/a$b$c;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_1
    iget-object v6, p0, Lgb/a$b$c;->l:Ljava/util/List;

    sget-object v7, Lgb/a$b$c;->s:Lgb/a$b$c$a;

    invoke-virtual {p1, v7, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :sswitch_3
    iget v6, p0, Lgb/a$b$c;->b:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lgb/a$b$c;->k:Lgb/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v8, Lgb/a$c;

    invoke-direct {v8}, Lgb/a$c;-><init>()V

    .line 9
    invoke-virtual {v8, v6}, Lgb/a$c;->l(Lgb/a;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 10
    :goto_1
    sget-object v6, Lgb/a;->h:Lgb/a$a;

    invoke-virtual {p1, v6, p2}, Lmb/d;->g(Lmb/b;Lmb/f;)Lmb/p;

    move-result-object v6

    check-cast v6, Lgb/a;

    iput-object v6, p0, Lgb/a$b$c;->k:Lgb/a;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, Lgb/a$c;->l(Lgb/a;)V

    invoke-virtual {v8}, Lgb/a$c;->k()Lgb/a;

    move-result-object v6

    iput-object v6, p0, Lgb/a$b$c;->k:Lgb/a;

    :cond_3
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/2addr v6, v7

    iput v6, p0, Lgb/a$b$c;->b:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 11
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 12
    iput v6, p0, Lgb/a$b$c;->j:I

    goto/16 :goto_0

    :sswitch_5
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 13
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 14
    iput v6, p0, Lgb/a$b$c;->h:I

    goto/16 :goto_0

    :sswitch_6
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 15
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v6

    .line 16
    iput v6, p0, Lgb/a$b$c;->g:I

    goto/16 :goto_0

    :sswitch_7
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 17
    invoke-virtual {p1}, Lmb/d;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 18
    iput-wide v6, p0, Lgb/a$b$c;->f:D

    goto/16 :goto_0

    :sswitch_8
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 19
    invoke-virtual {p1}, Lmb/d;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 20
    iput v6, p0, Lgb/a$b$c;->e:F

    goto/16 :goto_0

    :sswitch_9
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lgb/a$b$c;->b:I

    .line 21
    invoke-virtual {p1}, Lmb/d;->l()J

    move-result-wide v6

    ushr-long v8, v6, v1

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    .line 22
    iput-wide v6, p0, Lgb/a$b$c;->d:J

    goto/16 :goto_0

    .line 23
    :sswitch_a
    invoke-virtual {p1}, Lmb/d;->k()I

    move-result v7

    .line 24
    invoke-static {v7}, Lgb/a$b$c$c;->n(I)Lgb/a$b$c$c;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v6}, Lmb/e;->v(I)V

    invoke-virtual {v2, v7}, Lmb/e;->v(I)V

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lgb/a$b$c;->b:I

    or-int/2addr v6, v1

    iput v6, p0, Lgb/a$b$c;->b:I

    iput-object v8, p0, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    goto/16 :goto_0

    .line 25
    :goto_2
    invoke-virtual {p1, v6, v2}, Lmb/d;->q(ILmb/e;)Z

    move-result v5
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :sswitch_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 26
    :goto_3
    :try_start_1
    new-instance p2, Lmb/j;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmb/j;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p0, p2, Lmb/j;->a:Lmb/p;

    .line 28
    throw p2

    :catch_1
    move-exception p1

    .line 29
    iput-object p0, p1, Lmb/j;->a:Lmb/p;

    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    iget-object p2, p0, Lgb/a$b$c;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lgb/a$b$c;->l:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a$b$c;->a:Lmb/c;

    throw p1

    :catch_2
    :goto_5
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a$b$c;->a:Lmb/c;

    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lgb/a$b$c;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgb/a$b$c;->l:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lmb/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p2

    iput-object p2, p0, Lgb/a$b$c;->a:Lmb/c;

    throw p1

    :catch_3
    :goto_6
    invoke-virtual {v0}, Lmb/c$b;->c()Lmb/c;

    move-result-object p1

    iput-object p1, p0, Lgb/a$b$c;->a:Lmb/c;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1d -> :sswitch_8
        0x21 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lmb/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lmb/h;-><init>(I)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lgb/a$b$c;->p:B

    iput v0, p0, Lgb/a$b$c;->q:I

    .line 32
    iget-object p1, p1, Lmb/h$a;->a:Lmb/c;

    .line 33
    iput-object p1, p0, Lgb/a$b$c;->a:Lmb/c;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lgb/a$b$c;->p:B

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
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 12
    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    and-int/2addr v0, v3

    .line 16
    if-ne v0, v3, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lgb/a$b$c;->k:Lgb/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lgb/a;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iput-byte v2, p0, Lgb/a$b$c;->p:B

    .line 32
    .line 33
    return v2

    .line 34
    :cond_3
    const/4 v0, 0x0

    .line 35
    :goto_1
    iget-object v3, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ge v0, v3, :cond_5

    .line 42
    .line 43
    iget-object v3, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lgb/a$b$c;

    .line 50
    .line 51
    invoke-virtual {v3}, Lgb/a$b$c;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    iput-byte v2, p0, Lgb/a$b$c;->p:B

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    iput-byte v1, p0, Lgb/a$b$c;->p:B

    .line 64
    .line 65
    return v1
.end method

.method public final c()I
    .locals 9

    .line 1
    iget v0, p0, Lgb/a$b$c;->q:I

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
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 15
    .line 16
    iget v0, v0, Lgb/a$b$c$c;->a:I

    .line 17
    .line 18
    invoke-static {v1, v0}, Lmb/e;->a(II)I

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
    iget v3, p0, Lgb/a$b$c;->b:I

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    and-int/2addr v3, v4

    .line 29
    if-ne v3, v4, :cond_2

    .line 30
    .line 31
    iget-wide v5, p0, Lgb/a$b$c;->d:J

    .line 32
    .line 33
    invoke-static {v4}, Lmb/e;->h(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    shl-long v7, v5, v1

    .line 38
    .line 39
    const/16 v1, 0x3f

    .line 40
    .line 41
    shr-long v4, v5, v1

    .line 42
    .line 43
    xor-long/2addr v4, v7

    .line 44
    invoke-static {v4, v5}, Lmb/e;->g(J)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v3

    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_2
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 51
    .line 52
    const/4 v3, 0x4

    .line 53
    and-int/2addr v1, v3

    .line 54
    if-ne v1, v3, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-static {v1}, Lmb/e;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v3

    .line 62
    add-int/2addr v0, v1

    .line 63
    :cond_3
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 64
    .line 65
    const/16 v4, 0x8

    .line 66
    .line 67
    and-int/2addr v1, v4

    .line 68
    if-ne v1, v4, :cond_4

    .line 69
    .line 70
    invoke-static {v3}, Lmb/e;->h(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v4

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_4
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 77
    .line 78
    const/16 v3, 0x10

    .line 79
    .line 80
    and-int/2addr v1, v3

    .line 81
    if-ne v1, v3, :cond_5

    .line 82
    .line 83
    const/4 v1, 0x5

    .line 84
    iget v3, p0, Lgb/a$b$c;->g:I

    .line 85
    .line 86
    invoke-static {v1, v3}, Lmb/e;->b(II)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    :cond_5
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 92
    .line 93
    const/16 v3, 0x20

    .line 94
    .line 95
    and-int/2addr v1, v3

    .line 96
    if-ne v1, v3, :cond_6

    .line 97
    .line 98
    const/4 v1, 0x6

    .line 99
    iget v3, p0, Lgb/a$b$c;->h:I

    .line 100
    .line 101
    invoke-static {v1, v3}, Lmb/e;->b(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    :cond_6
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 107
    .line 108
    const/16 v3, 0x40

    .line 109
    .line 110
    and-int/2addr v1, v3

    .line 111
    if-ne v1, v3, :cond_7

    .line 112
    .line 113
    const/4 v1, 0x7

    .line 114
    iget v3, p0, Lgb/a$b$c;->j:I

    .line 115
    .line 116
    invoke-static {v1, v3}, Lmb/e;->b(II)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    :cond_7
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 122
    .line 123
    const/16 v3, 0x80

    .line 124
    .line 125
    and-int/2addr v1, v3

    .line 126
    if-ne v1, v3, :cond_8

    .line 127
    .line 128
    iget-object v1, p0, Lgb/a$b$c;->k:Lgb/a;

    .line 129
    .line 130
    invoke-static {v4, v1}, Lmb/e;->d(ILmb/p;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    :cond_8
    :goto_1
    iget-object v1, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ge v2, v1, :cond_9

    .line 142
    .line 143
    iget-object v1, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lmb/p;

    .line 150
    .line 151
    const/16 v3, 0x9

    .line 152
    .line 153
    invoke-static {v3, v1}, Lmb/e;->d(ILmb/p;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    add-int/2addr v0, v1

    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_9
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 162
    .line 163
    const/16 v2, 0x200

    .line 164
    .line 165
    and-int/2addr v1, v2

    .line 166
    if-ne v1, v2, :cond_a

    .line 167
    .line 168
    const/16 v1, 0xa

    .line 169
    .line 170
    iget v2, p0, Lgb/a$b$c;->n:I

    .line 171
    .line 172
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/2addr v0, v1

    .line 177
    :cond_a
    iget v1, p0, Lgb/a$b$c;->b:I

    .line 178
    .line 179
    const/16 v2, 0x100

    .line 180
    .line 181
    and-int/2addr v1, v2

    .line 182
    if-ne v1, v2, :cond_b

    .line 183
    .line 184
    const/16 v1, 0xb

    .line 185
    .line 186
    iget v2, p0, Lgb/a$b$c;->m:I

    .line 187
    .line 188
    invoke-static {v1, v2}, Lmb/e;->b(II)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    add-int/2addr v0, v1

    .line 193
    :cond_b
    iget-object v1, p0, Lgb/a$b$c;->a:Lmb/c;

    .line 194
    .line 195
    invoke-virtual {v1}, Lmb/c;->size()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    add-int/2addr v1, v0

    .line 200
    iput v1, p0, Lgb/a$b$c;->q:I

    .line 201
    .line 202
    return v1
.end method

.method public final d(Lmb/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgb/a$b$c;->c()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 11
    .line 12
    iget v0, v0, Lgb/a$b$c$c;->a:I

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lmb/e;->l(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    and-int/2addr v0, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    iget-wide v4, p0, Lgb/a$b$c;->d:J

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Lmb/e;->x(II)V

    .line 27
    .line 28
    .line 29
    shl-long v6, v4, v1

    .line 30
    .line 31
    const/16 v0, 0x3f

    .line 32
    .line 33
    shr-long/2addr v4, v0

    .line 34
    xor-long/2addr v4, v6

    .line 35
    invoke-virtual {p1, v4, v5}, Lmb/e;->w(J)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    and-int/2addr v0, v2

    .line 42
    const/4 v4, 0x5

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lgb/a$b$c;->e:F

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-virtual {p1, v5, v4}, Lmb/e;->x(II)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Lmb/e;->t(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    and-int/2addr v0, v5

    .line 63
    if-ne v0, v5, :cond_3

    .line 64
    .line 65
    iget-wide v6, p0, Lgb/a$b$c;->f:D

    .line 66
    .line 67
    invoke-virtual {p1, v2, v1}, Lmb/e;->x(II)V

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-virtual {p1, v0, v1}, Lmb/e;->u(J)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 78
    .line 79
    const/16 v1, 0x10

    .line 80
    .line 81
    and-int/2addr v0, v1

    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    iget v0, p0, Lgb/a$b$c;->g:I

    .line 85
    .line 86
    invoke-virtual {p1, v4, v0}, Lmb/e;->m(II)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 90
    .line 91
    const/16 v1, 0x20

    .line 92
    .line 93
    and-int/2addr v0, v1

    .line 94
    if-ne v0, v1, :cond_5

    .line 95
    .line 96
    const/4 v0, 0x6

    .line 97
    iget v1, p0, Lgb/a$b$c;->h:I

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Lmb/e;->m(II)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 103
    .line 104
    const/16 v1, 0x40

    .line 105
    .line 106
    and-int/2addr v0, v1

    .line 107
    if-ne v0, v1, :cond_6

    .line 108
    .line 109
    const/4 v0, 0x7

    .line 110
    iget v1, p0, Lgb/a$b$c;->j:I

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Lmb/e;->m(II)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 116
    .line 117
    const/16 v1, 0x80

    .line 118
    .line 119
    and-int/2addr v0, v1

    .line 120
    if-ne v0, v1, :cond_7

    .line 121
    .line 122
    iget-object v0, p0, Lgb/a$b$c;->k:Lgb/a;

    .line 123
    .line 124
    invoke-virtual {p1, v5, v0}, Lmb/e;->o(ILmb/p;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_0
    iget-object v0, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-ge v3, v0, :cond_8

    .line 134
    .line 135
    iget-object v0, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lmb/p;

    .line 142
    .line 143
    const/16 v1, 0x9

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, Lmb/e;->o(ILmb/p;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_8
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 152
    .line 153
    const/16 v1, 0x200

    .line 154
    .line 155
    and-int/2addr v0, v1

    .line 156
    if-ne v0, v1, :cond_9

    .line 157
    .line 158
    const/16 v0, 0xa

    .line 159
    .line 160
    iget v1, p0, Lgb/a$b$c;->n:I

    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Lmb/e;->m(II)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget v0, p0, Lgb/a$b$c;->b:I

    .line 166
    .line 167
    const/16 v1, 0x100

    .line 168
    .line 169
    and-int/2addr v0, v1

    .line 170
    if-ne v0, v1, :cond_a

    .line 171
    .line 172
    const/16 v0, 0xb

    .line 173
    .line 174
    iget v1, p0, Lgb/a$b$c;->m:I

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Lmb/e;->m(II)V

    .line 177
    .line 178
    .line 179
    :cond_a
    iget-object v0, p0, Lgb/a$b$c;->a:Lmb/c;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lmb/e;->r(Lmb/c;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final f()Lmb/p$a;
    .locals 1

    .line 1
    new-instance v0, Lgb/a$b$c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/a$b$c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lgb/a$b$c$b;->l(Lgb/a$b$c;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lmb/p$a;
    .locals 1

    new-instance v0, Lgb/a$b$c$b;

    invoke-direct {v0}, Lgb/a$b$c$b;-><init>()V

    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    sget-object v0, Lgb/a$b$c$c;->b:Lgb/a$b$c$c;

    .line 2
    .line 3
    iput-object v0, p0, Lgb/a$b$c;->c:Lgb/a$b$c$c;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lgb/a$b$c;->d:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lgb/a$b$c;->e:F

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lgb/a$b$c;->f:D

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lgb/a$b$c;->g:I

    .line 18
    .line 19
    iput v0, p0, Lgb/a$b$c;->h:I

    .line 20
    .line 21
    iput v0, p0, Lgb/a$b$c;->j:I

    .line 22
    .line 23
    sget-object v1, Lgb/a;->g:Lgb/a;

    .line 24
    .line 25
    iput-object v1, p0, Lgb/a$b$c;->k:Lgb/a;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lgb/a$b$c;->l:Ljava/util/List;

    .line 32
    .line 33
    iput v0, p0, Lgb/a$b$c;->m:I

    .line 34
    .line 35
    iput v0, p0, Lgb/a$b$c;->n:I

    .line 36
    .line 37
    return-void
.end method
