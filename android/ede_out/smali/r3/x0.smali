.class public final Lr3/x0;
.super Lr3/o0;
.source "SourceFile"


# instance fields
.field public a:Lr3/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Lr3/c;I)V
    .locals 0
    .param p1    # Lr3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lr3/o0;-><init>()V

    iput-object p1, p0, Lr3/x0;->a:Lr3/c;

    iput p2, p0, Lr3/x0;->b:I

    return-void
.end method
