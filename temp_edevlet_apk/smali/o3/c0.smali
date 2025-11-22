.class public final Lo3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm3/b;

.field public final synthetic b:Lo3/d0;


# direct methods
.method public constructor <init>(Lo3/d0;Lm3/b;)V
    .locals 0

    iput-object p1, p0, Lo3/c0;->b:Lo3/d0;

    iput-object p2, p0, Lo3/c0;->a:Lm3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo3/c0;->b:Lo3/d0;

    .line 2
    .line 3
    iget-object v1, v0, Lo3/d0;->f:Lo3/d;

    .line 4
    .line 5
    iget-object v1, v1, Lo3/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v2, v0, Lo3/d0;->b:Lo3/a;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lo3/a0;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lo3/c0;->a:Lm3/b;

    .line 19
    .line 20
    iget v3, v2, Lm3/b;->b:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_0
    const/4 v5, 0x0

    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    iput-boolean v4, v0, Lo3/d0;->e:Z

    .line 32
    .line 33
    iget-object v2, v0, Lo3/d0;->a:Ln3/a$e;

    .line 34
    .line 35
    invoke-interface {v2}, Ln3/a$e;->o()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iget-boolean v1, v0, Lo3/d0;->e:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, v0, Lo3/d0;->c:Lr3/k;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lo3/d0;->d:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v2, v1, v0}, Ln3/a$e;->j(Lr3/k;Ljava/util/Set;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    :try_start_0
    invoke-interface {v2}, Ln3/a$e;->b()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v2, v5, v0}, Ln3/a$e;->j(Lr3/k;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v3, "GoogleApiManager"

    .line 65
    .line 66
    const-string v4, "Failed to get service from broker. "

    .line 67
    .line 68
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    const-string v0, "Failed to get service from broker."

    .line 72
    .line 73
    invoke-interface {v2, v0}, Ln3/a$e;->d(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lm3/b;

    .line 77
    .line 78
    const/16 v2, 0xa

    .line 79
    .line 80
    invoke-direct {v0, v2}, Lm3/b;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0, v5}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    invoke-virtual {v1, v2, v5}, Lo3/a0;->m(Lm3/b;Ljava/lang/RuntimeException;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
