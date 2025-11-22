.class public final Lkd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lkd/b;


# instance fields
.field public a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkd/b;

    invoke-direct {v0}, Lkd/b;-><init>()V

    sput-object v0, Lkd/b;->b:Lkd/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkd/b;->a:J

    return-void
.end method
