.class public final Ldb/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcc/m0;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Lcc/m0;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/g$b;->a:Lcc/m0;

    iput p2, p0, Ldb/g$b;->b:I

    iput-boolean p3, p0, Ldb/g$b;->c:Z

    return-void
.end method
