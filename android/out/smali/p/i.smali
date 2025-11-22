.class public final Lp/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/i;

    invoke-direct {v0}, Lp/i;-><init>()V

    sput-object v0, Lp/i;->a:Lp/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "coil.request.NullRequestData"

    return-object v0
.end method
