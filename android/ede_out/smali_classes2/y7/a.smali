.class public final Ly7/a;
.super Lq4/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

.field public b:Lcom/google/android/libraries/barhopper/BarhopperV2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq4/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/RecognitionOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly7/a;->a:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    .line 10
    .line 11
    iget p1, p1, Lq4/d0;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/barhopper/RecognitionOptions;->a(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
