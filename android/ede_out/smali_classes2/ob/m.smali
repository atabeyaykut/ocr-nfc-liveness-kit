.class public abstract Lob/m;
.super Lc6/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc6/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Lma/b;Lma/b;)V
    .locals 1

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lob/m;->t(Lma/b;Lma/b;)V

    return-void
.end method

.method public abstract t(Lma/b;Lma/b;)V
.end method
