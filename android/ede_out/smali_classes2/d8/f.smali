.class public final Ld8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld8/g;

.field public final b:Lv7/d;


# direct methods
.method public constructor <init>(Ld8/g;Lv7/d;)V
    .locals 0
    .param p1    # Ld8/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv7/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/f;->a:Ld8/g;

    iput-object p2, p0, Ld8/f;->b:Lv7/d;

    return-void
.end method
