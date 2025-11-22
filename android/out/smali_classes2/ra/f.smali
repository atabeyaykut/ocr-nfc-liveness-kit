.class public final Lra/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/q;


# instance fields
.field public final a:Ljava/lang/ClassLoader;

.field public final b:Lzb/b;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/f;->a:Ljava/lang/ClassLoader;

    new-instance p1, Lzb/b;

    invoke-direct {p1}, Lzb/b;-><init>()V

    iput-object p1, p0, Lra/f;->b:Lzb/b;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;)Leb/q$a$b;
    .locals 3

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Llb/c;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x24

    .line 15
    .line 16
    const/16 v2, 0x2e

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Llb/c;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    iget-object p1, p0, Lra/f;->a:Ljava/lang/ClassLoader;

    .line 56
    .line 57
    invoke-static {p1, v0}, Lx5/a;->t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-static {p1}, Lra/e$a;->a(Ljava/lang/Class;)Lra/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    new-instance v0, Leb/q$a$b;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Leb/q$a$b;-><init>(Lra/e;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    :goto_1
    return-object v0
.end method

.method public final b(Lcb/g;)Leb/q$a$b;
    .locals 2

    .line 1
    const-string v0, "javaClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcb/g;->d()Llb/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lra/f;->a:Ljava/lang/ClassLoader;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lx5/a;->t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lra/e$a;->a(Ljava/lang/Class;)Lra/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance v0, Leb/q$a$b;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Leb/q$a$b;-><init>(Lra/e;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v0
.end method

.method public final c(Llb/c;)Ljava/io/InputStream;
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lja/o;->j:Llb/f;

    invoke-virtual {p1, v0}, Llb/c;->h(Llb/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lzb/a;->m:Lzb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lzb/a;->a(Llb/c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lra/f;->b:Lzb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lzb/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
