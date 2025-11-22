.class public final Lx4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/c;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Ly4/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ly4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx4/h;->b:Ly4/c;

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lx4/h;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method
