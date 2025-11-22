.class public final Ln0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln0/h0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln0/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/v;

    invoke-direct {v0}, Ln0/v;-><init>()V

    sput-object v0, Ln0/v;->a:Ln0/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo0/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ln0/p;->b(Lo0/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
