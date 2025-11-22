.class public final Lpa/r;
.super Lpa/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lma/b0;Llb/c;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lpa/i0;-><init>(Lma/b0;Llb/c;)V

    return-void
.end method


# virtual methods
.method public final o()Lvb/i;
    .locals 1

    sget-object v0, Lvb/i$b;->b:Lvb/i$b;

    return-object v0
.end method
