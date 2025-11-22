.class public final Lq/a$b;
.super Lq/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lq/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq/a$b;

    invoke-direct {v0}, Lq/a$b;-><init>()V

    sput-object v0, Lq/a$b;->a:Lq/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dimension.Undefined"

    return-object v0
.end method
