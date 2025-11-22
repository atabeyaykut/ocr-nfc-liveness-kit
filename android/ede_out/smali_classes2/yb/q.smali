.class public final Lyb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb/i;


# instance fields
.field public final a:Lma/f0;


# direct methods
.method public constructor <init>(Lma/f0;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb/q;->a:Lma/f0;

    return-void
.end method


# virtual methods
.method public final a(Llb/b;)Lyb/h;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    move-result-object v0

    const-string v1, "classId.packageFqName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyb/q;->a:Lma/f0;

    invoke-static {v1, v0}, Lc5/v;->F(Lma/f0;Llb/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lma/e0;

    instance-of v2, v1, Lyb/r;

    if-eqz v2, :cond_0

    check-cast v1, Lyb/r;

    invoke-virtual {v1}, Lyb/r;->E0()Lyb/f0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyb/f0;->a(Llb/b;)Lyb/h;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
