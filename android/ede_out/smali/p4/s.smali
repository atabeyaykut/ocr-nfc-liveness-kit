.class public final Lp4/s;
.super Lp4/x;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# direct methods
.method public constructor <init>(Lp4/y;Ljava/lang/Object;Ljava/util/List;Lp4/v;)V
    .locals 0
    .param p1    # Lp4/y;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lp4/x;-><init>(Lp4/y;Ljava/lang/Object;Ljava/util/List;Lp4/v;)V

    return-void
.end method
