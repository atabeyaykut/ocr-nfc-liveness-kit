.class public final synthetic Landroidx/core/location/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/core/location/k;->a:I

    iput-object p1, p0, Landroidx/core/location/k;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/k;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/k;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/core/location/k;->a:I

    iget-object v1, p0, Landroidx/core/location/k;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/core/location/k;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/core/location/k;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    check-cast v2, Landroidx/core/location/GnssStatusCompat;

    invoke-static {v3, v1, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void

    :goto_0
    check-cast v3, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    check-cast v2, Landroid/location/GnssStatus;

    invoke-static {v3, v1, v2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
