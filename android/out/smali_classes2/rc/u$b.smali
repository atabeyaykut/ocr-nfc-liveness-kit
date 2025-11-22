.class public final Lrc/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lrc/q;

.field public final b:Lrc/a0;


# direct methods
.method public constructor <init>(Lrc/q;Lrc/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/u$b;->a:Lrc/q;

    iput-object p2, p0, Lrc/u$b;->b:Lrc/a0;

    return-void
.end method
