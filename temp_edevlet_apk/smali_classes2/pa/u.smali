.class public final Lpa/u;
.super Lna/b;
.source "SourceFile"

# interfaces
.implements Lma/s;


# instance fields
.field public final b:Lma/l0;


# direct methods
.method public constructor <init>(Lpa/l0;Lna/h;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lna/b;-><init>(Lna/h;)V

    iput-object p1, p0, Lpa/u;->b:Lma/l0;

    return-void
.end method
