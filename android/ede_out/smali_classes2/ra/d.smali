.class public final Lra/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/l;


# instance fields
.field public final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/d;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final a(Llb/c;)V
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Llb/c;)Lsa/b0;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsa/b0;

    invoke-direct {v0, p1}, Lsa/b0;-><init>(Llb/c;)V

    return-object v0
.end method

.method public final c(Lva/l$a;)Lsa/r;
    .locals 3

    iget-object p1, p1, Lva/l$a;->a:Llb/b;

    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    move-result-object p1

    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-static {p1, v2, v1}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Llb/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llb/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lra/d;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lx5/a;->t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lsa/r;

    invoke-direct {v0, p1}, Lsa/r;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
