.class public final Lx0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lv0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lv0/h;


# direct methods
.method public constructor <init>(Lv0/d;Ljava/lang/Object;Lv0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/d<",
            "TDataType;>;TDataType;",
            "Lv0/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/g;->a:Lv0/d;

    iput-object p2, p0, Lx0/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lx0/g;->c:Lv0/h;

    return-void
.end method
