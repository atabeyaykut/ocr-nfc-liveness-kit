.class public final Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;
.super Ll8/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/p<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ll8/u$b;


# direct methods
.method public constructor <init>(Ll8/p;Ll8/u$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/p<",
            "Ljava/lang/Object;",
            ">;",
            "Ll8/u$b;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ll8/p;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;->delegate:Ll8/p;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;->token:Ll8/u$b;

    return-void
.end method


# virtual methods
.method public final a(Ll8/u;)Ljava/lang/Object;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ll8/u;->k()Ll8/u$b;

    move-result-object v0

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;->token:Ll8/u$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ll8/u;->p()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;->delegate:Ll8/p;

    invoke-virtual {v0, p1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ll8/y;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;->delegate:Ll8/p;

    invoke-virtual {v0, p1, p2}, Ll8/p;->c(Ll8/y;Ljava/lang/Object;)V

    return-void
.end method
