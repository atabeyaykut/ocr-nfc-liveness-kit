.class public final Lsa/b0;
.super Lsa/v;
.source "SourceFile"

# interfaces
.implements Lcb/t;


# instance fields
.field public final a:Llb/c;


# direct methods
.method public constructor <init>(Llb/c;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsa/v;-><init>()V

    iput-object p1, p0, Lsa/b0;->a:Llb/c;

    return-void
.end method


# virtual methods
.method public final F(Lx9/l;)V
    .locals 1

    const-string v0, "nameFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Llb/c;
    .locals 1

    iget-object v0, p0, Lsa/b0;->a:Llb/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lsa/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsa/b0;

    .line 6
    .line 7
    iget-object p1, p1, Lsa/b0;->a:Llb/c;

    .line 8
    .line 9
    iget-object v0, p0, Lsa/b0;->a:Llb/c;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final bridge synthetic getAnnotations()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lsa/b0;->a:Llb/c;

    invoke-virtual {v0}, Llb/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n(Llb/c;)Lcb/a;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lsa/b0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsa/b0;->a:Llb/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()V
    .locals 0

    return-void
.end method
