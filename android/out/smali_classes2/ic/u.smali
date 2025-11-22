.class public abstract Lic/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/u$a;,
        Lic/u$b;,
        Lic/u$c;
    }
.end annotation


# instance fields
.field public final a:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Lja/k;",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx9/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lic/u;->a:Lx9/l;

    const-string p2, "must return "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lic/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lma/u;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lic/f$a;->a(Lic/f;Lma/u;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lma/u;)Z
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    move-result-object v0

    iget-object v1, p0, Lic/u;->a:Lx9/l;

    invoke-static {p1}, Lsb/b;->e(Lma/j;)Lja/k;

    move-result-object p1

    invoke-interface {v1, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lic/u;->b:Ljava/lang/String;

    return-object v0
.end method
