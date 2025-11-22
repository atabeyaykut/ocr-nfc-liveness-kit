.class public final Leb/o$a;
.super Leb/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final i:Leb/o;


# direct methods
.method public constructor <init>(Leb/o;)V
    .locals 1

    .line 1
    const-string v0, "elementType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/o;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Leb/o$a;->i:Leb/o;

    .line 10
    .line 11
    return-void
.end method
