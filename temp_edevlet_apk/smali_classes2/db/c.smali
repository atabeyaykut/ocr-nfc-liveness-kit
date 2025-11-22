.class public final Ldb/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ldb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldb/c;->a:Ldb/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "$this$extractNullability"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldb/c;->a:Ldb/a;

    .line 7
    .line 8
    check-cast v0, Ldb/v;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p1, Lna/c;

    .line 14
    .line 15
    instance-of v1, p1, Lxa/g;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Lxa/g;

    .line 21
    .line 22
    invoke-interface {v1}, Lxa/g;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :cond_0
    instance-of v1, p1, Lza/d;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Ldb/v;->c:Lp4/g7;

    .line 33
    .line 34
    iget-object v1, v1, Lp4/g7;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lya/c;

    .line 37
    .line 38
    iget-object v1, v1, Lya/c;->t:Lya/d;

    .line 39
    .line 40
    invoke-interface {v1}, Lya/d;->c()V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lza/d;

    .line 44
    .line 45
    iget-boolean p1, p1, Lza/d;->h:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    sget-object p1, Lva/c;->f:Lva/c;

    .line 50
    .line 51
    iget-object v0, v0, Ldb/v;->d:Lva/c;

    .line 52
    .line 53
    if-ne v0, p1, :cond_2

    .line 54
    .line 55
    :cond_1
    const/4 p1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
