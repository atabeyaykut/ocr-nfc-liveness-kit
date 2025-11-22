.class public final Lr3/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Lm3/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lm3/e;->d:Lm3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lr3/g0;->a:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lr3/g0;->b:Lm3/f;

    return-void
.end method
