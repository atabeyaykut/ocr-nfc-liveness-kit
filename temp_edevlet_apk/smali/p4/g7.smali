.class public final Lp4/g7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lya/c;Lya/j;Ll9/e;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/g7;->a:Ljava/lang/Object;

    iput-object p2, p0, Lp4/g7;->b:Ljava/lang/Object;

    iput-object p3, p0, Lp4/g7;->c:Ljava/lang/Object;

    check-cast p3, Ll9/e;

    iput-object p3, p0, Lp4/g7;->d:Ljava/lang/Object;

    new-instance p1, Lab/d;

    check-cast p2, Lya/j;

    invoke-direct {p1, p0, p2}, Lab/d;-><init>(Lp4/g7;Lya/j;)V

    iput-object p1, p0, Lp4/g7;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lma/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/g7;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lya/c;

    .line 4
    .line 5
    iget-object v0, v0, Lya/c;->o:Lma/b0;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b()Lbc/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/g7;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lya/c;

    .line 4
    .line 5
    iget-object v0, v0, Lya/c;->a:Lbc/l;

    .line 6
    .line 7
    return-object v0
.end method
