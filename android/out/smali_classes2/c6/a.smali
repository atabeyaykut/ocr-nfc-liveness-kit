.class public abstract Lc6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lid/c;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lc6/e;->c(Ljava/lang/Class;)La7/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lc6/e;->d(Ljava/lang/Class;)La7/b;

    move-result-object p1

    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract k(Lma/b;)V
.end method

.method public abstract m()I
.end method

.method public abstract n()Lt1/v;
.end method

.method public abstract o(Lma/b;Lma/b;)V
.end method

.method public abstract p()Z
.end method

.method public abstract q(Lfc/h;)Lcc/s1;
.end method

.method public abstract r(Lfc/h;)Lcc/e0;
.end method

.method public s(Lma/b;Ljava/util/Collection;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lma/b;->w0(Ljava/util/Collection;)V

    return-void
.end method
