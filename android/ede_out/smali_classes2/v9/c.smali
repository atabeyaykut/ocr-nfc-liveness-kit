.class public final Lv9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/c$c;,
        Lv9/c$a;,
        Lv9/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llc/h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lv9/c;->a:Ljava/io/File;

    .line 11
    .line 12
    iput v1, p0, Lv9/c;->b:I

    .line 13
    .line 14
    const p1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lv9/c;->c:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv9/c$b;

    invoke-direct {v0, p0}, Lv9/c$b;-><init>(Lv9/c;)V

    return-object v0
.end method
