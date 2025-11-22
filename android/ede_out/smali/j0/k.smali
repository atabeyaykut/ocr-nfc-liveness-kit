.class public final Lj0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lj0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lj0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lj0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj0/a;Lj0/a;Lj0/b;Lj0/b;)V
    .locals 0
    .param p1    # Lj0/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lj0/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/k;->a:Lj0/a;

    iput-object p2, p0, Lj0/k;->b:Lj0/a;

    iput-object p3, p0, Lj0/k;->c:Lj0/b;

    iput-object p4, p0, Lj0/k;->d:Lj0/b;

    return-void
.end method
