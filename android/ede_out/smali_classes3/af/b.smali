.class public final Laf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a;


# instance fields
.field public final a:Lbf/a;

.field public final b:Lbf/c;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lbf/a;Lbf/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laf/b;->a:Lbf/a;

    iput-object p2, p0, Laf/b;->b:Lbf/c;

    iput-object p3, p0, Laf/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Laf/b;->b:Lbf/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "language"

    .line 11
    .line 12
    const-string v2, "tr"

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final b()Lrc/v;
    .locals 4

    .line 1
    iget-object v0, p0, Laf/b;->a:Lbf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldd/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ldd/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lrc/v$a;

    .line 13
    .line 14
    invoke-direct {v1}, Lrc/v$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-string v3, "unit"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lsc/c;->b(Ljava/util/concurrent/TimeUnit;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iput v3, v1, Lrc/v$a;->r:I

    .line 29
    .line 30
    invoke-static {v2}, Lsc/c;->b(Ljava/util/concurrent/TimeUnit;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Lrc/v$a;->s:I

    .line 35
    .line 36
    iget-object v2, v1, Lrc/v$a;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Lrc/v;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lrc/v;-><init>(Lrc/v$a;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final c()Lrc/v;
    .locals 5

    .line 1
    iget-object v0, p0, Laf/b;->a:Lbf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldd/b;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ldd/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lrc/v$a;

    .line 17
    .line 18
    invoke-direct {v2}, Lrc/v$a;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-string v4, "unit"

    .line 24
    .line 25
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lsc/c;->b(Ljava/util/concurrent/TimeUnit;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iput v4, v2, Lrc/v$a;->r:I

    .line 33
    .line 34
    invoke-static {v3}, Lsc/c;->b(Ljava/util/concurrent/TimeUnit;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iput v4, v2, Lrc/v$a;->s:I

    .line 39
    .line 40
    invoke-static {v3}, Lsc/c;->b(Ljava/util/concurrent/TimeUnit;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput v3, v2, Lrc/v$a;->t:I

    .line 45
    .line 46
    iget-object v3, v2, Lrc/v$a;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v0, Lhf/b;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lhf/b;-><init>(Landroid/content/SharedPreferences;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v0, Lhf/a;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lhf/a;-><init>(Landroid/content/SharedPreferences;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Lrc/v;

    .line 68
    .line 69
    invoke-direct {v0, v2}, Lrc/v;-><init>(Lrc/v$a;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final d()Lud/d0;
    .locals 3

    .line 1
    iget-object v0, p0, Laf/b;->a:Lbf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laf/b;->c()Lrc/v;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lud/d0$b;

    .line 11
    .line 12
    invoke-direct {v1}, Lud/d0$b;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "https://api.turkiye.gov.tr/"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lud/d0$b;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, v1, Lud/d0$b;->b:Lrc/d$a;

    .line 21
    .line 22
    new-instance v0, Lvd/g;

    .line 23
    .line 24
    invoke-direct {v0}, Lvd/g;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lud/d0$b;->a(Lvd/g;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lwd/a;->c()Lwd/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Lud/d0$b;->b(Lwd/a;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lud/d0$b;->d()Lud/d0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final e()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Laf/b;->b:Lbf/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    iget-object v1, p0, Laf/b;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "MainActivity"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "context.applicationConte\u2026y\", Context.MODE_PRIVATE)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final f()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Laf/b;->e()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Laf/b;->b:Lbf/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "sharedPreferences.edit()"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
