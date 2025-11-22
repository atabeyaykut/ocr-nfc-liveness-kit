.class public final Lcc/g1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lec/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/f1;


# direct methods
.method public constructor <init>(Lcc/f1;)V
    .locals 0

    iput-object p1, p0, Lcc/g1;->a:Lcc/f1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lec/h;->B:Lec/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcc/g1;->a:Lcc/f1;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lec/i;->c(Lec/h;[Ljava/lang/String;)Lec/f;

    move-result-object v0

    return-object v0
.end method
