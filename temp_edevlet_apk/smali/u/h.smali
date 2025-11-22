.class public final Lu/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/h;->a:Z

    iput-boolean v0, p0, Lu/h;->b:Z

    iput-boolean v0, p0, Lu/h;->c:Z

    const/4 v0, 0x4

    iput v0, p0, Lu/h;->d:I

    return-void
.end method
